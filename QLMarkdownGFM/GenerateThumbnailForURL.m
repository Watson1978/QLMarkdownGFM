#import <Cocoa/Cocoa.h>
#import <QuickLook/QuickLook.h>
#import "markdown.h"

OSStatus GenerateThumbnailForURL(void *thisInterface, QLThumbnailRequestRef thumbnail, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options, CGSize maxSize);
void CancelThumbnailGeneration(void *thisInterface, QLThumbnailRequestRef thumbnail);

/* -----------------------------------------------------------------------------
    Generate a thumbnail for file

   This function's job is to create thumbnail for designated file as fast as possible
   ----------------------------------------------------------------------------- */

OSStatus GenerateThumbnailForURL(void *thisInterface, QLThumbnailRequestRef thumbnail, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options, CGSize maxSize)
{
    @autoreleasepool {
        NSData *data = renderHTML((__bridge NSURL*) url);
        if (data) {
            float scale = maxSize.height / 800.0;
            NSDictionary *properties = @{ (id)kQLThumbnailOptionScaleFactorKey: @(scale) };
            QLThumbnailRequestSetThumbnailWithDataRepresentation(thumbnail, (__bridge CFDataRef)data, kUTTypeHTML, NULL, (__bridge CFDictionaryRef)properties);
        }
    }
    return noErr;
}

void CancelThumbnailGeneration(void *thisInterface, QLThumbnailRequestRef thumbnail)
{
    // Implement only if supported
}
