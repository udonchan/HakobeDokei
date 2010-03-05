//
//  HakobeDokeiAppDelegate.h
//  HakobeDokei
//
//  Created by 鈴木 うどん on 3/5/10.
//
#import <UIKit/UIKit.h>
#import "FrontViewController.h"
#import "HakobeDokeiAppDelegate.h"
@interface HakobeDokeiAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UINavigationController *rootViewController;
    NSTimer *timer;
}
@property (retain, readonly) UINavigationController *rootViewController;
@property (assign) NSTimer *timer;
@end

