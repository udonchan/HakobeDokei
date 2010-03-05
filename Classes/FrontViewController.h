//
//  FrontViewController.h
//  HakobeDokei
//
//  Created by 鈴木 うどん on 3/5/10.
//

#import <UIKit/UIKit.h>


@interface FrontViewController : UIViewController {
	id delegate;
}
-(id)initWithAppDelegate:(id)appDelegate;

@end
