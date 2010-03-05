//
//  FrontViewController.h
//  HakobeDokei
//
//  Created by 鈴木 督史 on 3/5/10.
//  Copyright 2010 立命館大学. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FrontViewController : UIViewController {
	id delegate;
}
-(id)initWithAppDelegate:(id)appDelegate;

@end
