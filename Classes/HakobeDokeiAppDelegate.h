//
//  HakobeDokeiAppDelegate.h
//  HakobeDokei
//
//  Created by 鈴木 督史 on 3/5/10.
//  Copyright 立命館大学 2010. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "FrontViewController.h"
#import "HakobeDokeiAppDelegate.h"
@interface HakobeDokeiAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *rootViewController;
}
@property (retain, readonly) UINavigationController *rootViewController;
@end

