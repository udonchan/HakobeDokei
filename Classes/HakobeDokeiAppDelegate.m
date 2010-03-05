//
//  HakobeDokeiAppDelegate.m
//  HakobeDokei
//
//  Created by 鈴木 督史 on 3/5/10.
//  Copyright 立命館大学 2010. All rights reserved.
//
#import "HakobeDokeiAppDelegate.h"
@implementation HakobeDokeiAppDelegate
@synthesize rootViewController;
-(void)createViews{
	rootViewController = [[UINavigationController alloc] initWithRootViewController:
						  [[[FrontViewController alloc] initWithAppDelegate:self]autorelease]];
}
-(void)applicationDidFinishLaunching:(UIApplication *)application{ 
	[self createViews];
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[window addSubview:rootViewController.view];
	[window makeKeyAndVisible];
}
-(void)dealloc{
    [window release];
	[rootViewController release];
    [super dealloc];
}
@end