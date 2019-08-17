#import <Cocoa/Cocoa.h>
#import <QuickLook/QuickLook.h>
#import "markdown.h"

OSStatus GeneratePreviewForURL(void *thisInterface, QLPreviewRequestRef preview, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options);
void CancelPreviewGeneration(void *thisInterface, QLPreviewRequestRef preview);

/* -----------------------------------------------------------------------------
   Generate a preview for file

   This function's job is to create preview for designated file
   ----------------------------------------------------------------------------- */

OSStatus GeneratePreviewForURL(void *thisInterface, QLPreviewRequestRef preview, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options)
{
    @autoreleasepool {
        NSData *data = renderHTML((__bridge NSURL*) url);
        NSDictionary* properties = @{
            (__bridge NSString*)kQLPreviewPropertyTextEncodingNameKey : @"UTF-8",
            (__bridge NSString*)kQLPreviewPropertyMIMETypeKey : @"text/html",
        };
        if (data) {
            QLPreviewRequestSetDataRepresentation(preview, (__bridge CFDataRef)data, kUTTypeHTML, (__bridge CFDictionaryRef)properties);
        }
        
        return noErr;
    }
}

void CancelPreviewGeneration(void *thisInterface, QLPreviewRequestRef preview)
{
    // Implement only if supported
}
