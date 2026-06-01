#import <Foundation/Foundation.h>

NSBundle* RxCocoaRuntime_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"RxSwift_RxCocoaRuntime.bundle"];

    NSBundle *preferredBundle = [NSBundle bundleWithURL:bundleURL];
    if (preferredBundle == nil) {
      return [NSBundle bundleWithPath:@"/Users/sameh/Documents/FawryPayAVLSPM/.build/arm64-apple-macosx/debug/RxSwift_RxCocoaRuntime.bundle"];
    }

    return preferredBundle;
}