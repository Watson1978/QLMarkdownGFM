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
        
        if (data) {
            QLPreviewRequestSetDataRepresentation(preview, (__bridge CFDataRef)data, kUTTypeHTML, NULL);
        }
        
        return noErr;
    }
}

void CancelPreviewGeneration(void *thisInterface, QLPreviewRequestRef preview)
{
    // Implement only if supported
}
