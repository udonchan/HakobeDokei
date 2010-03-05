//
//  FrontViewController.h
//  HakobeDokei
//
//  Created by 鈴木 うどん on 3/5/10.
//

#import <UIKit/UIKit.h>
@interface FrontViewController : UIViewController {
    NSDate *date;
    UIImageView *imageView;
    UILabel *timeLabel;
    id delegate;
}
@property (nonatomic, retain) NSDate *date;
@property (nonatomic, assign) id  delegate;
-(id)initWithAppDelegate:(id)appDelegate;
-(void)updateLabel;
@end
