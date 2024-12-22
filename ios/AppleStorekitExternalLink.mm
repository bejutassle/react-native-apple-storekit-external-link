#import "AppleStorekitExternalLink.h"

@implementation AppleStorekitExternalLink

RCT_EXPORT_METHOD(showExternalLinkPopup:(NSString *)appIdentifier
                              resolver:(RCTPromiseResolveBlock)resolve
                              rejecter:(RCTPromiseRejectBlock)reject)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if (@available(iOS 15.0, *)) {
            SKOverlay.AppConfiguration *config = [[SKOverlay.AppConfiguration alloc] initWithAppIdentifier:appIdentifier position:SKOverlayPositionBottom];
            UIWindowScene *scene = (UIWindowScene *)[[[UIApplication sharedApplication] connectedScenes] anyObject];
            if (scene) {
                [SKOverlay presentWithConfiguration:config inScene:scene];
                resolve(@(YES));
            } else {
                reject(@"no_scene", @"No valid UIWindowScene found", nil);
            }
        } else {
            reject(@"unsupported_version", @"iOS 15.0 or later is required for this feature", nil);
        }
    });
}

@end