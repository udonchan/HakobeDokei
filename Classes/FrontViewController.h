//
//  FrontViewController.h
//  HakobeDokei
//
//  Created by 鈴木 うどん on 3/5/10.
//

#import <UIKit/UIKit.h>
@protocol DateViewDelegate <NSObject>
@required
- (void)takeNewDate:(NSDate *)newDate;
- (UINavigationController *)navController;
@end
@interface FrontViewController : UIViewController {
    NSDate *date;
    UIImageView *imageView;
    id delegate;
}
@property (nonatomic, retain) NSDate *date;
@property (nonatomic, assign) id  delegate;
-(id)initWithAppDelegate:(id)appDelegate;
@end
