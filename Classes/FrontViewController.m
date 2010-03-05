//
//  FrontViewController.m
//  HakobeDokei
//
//  Created by 鈴木 うどん on 3/5/10.
//
#import "FrontViewController.h"
@implementation FrontViewController
@synthesize date;
@synthesize delegate;
- (void)info {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"HakobeDokei" 
                                                    message:@"We love Hakobe-san!\nCreated by Udon Suzuki" 
                                                   delegate:self 
                                          cancelButtonTitle:@"OK" 
                                          otherButtonTitles: nil];
    [alert show];
    [alert release];
}
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)createViews {
    CGRect bounds = [[UIScreen mainScreen] applicationFrame];
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
                                              initWithTitle:NSLocalizedString(@"Info", @"Info - for button to information")
                                              style:UIBarButtonItemStylePlain
                                              target: self 
                                              action: @selector(info)] autorelease];
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,bounds.size.width, 460)];
    [imageView setAnimationImages:[NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"hakobe01.png"],
                                   [UIImage imageNamed:@"hakobe02.png"],
                                   nil]];
    [imageView setAnimationDuration:2.0];
    [imageView stopAnimating];
    [imageView setIsAccessibilityElement:YES];
    [imageView setAccessibilityLabel:self.title];
    timeLabel = [[[UILabel alloc] initWithFrame: CGRectMake(0, 120, bounds. size.width, 170)] autorelease];
    [timeLabel setFont:[UIFont boldSystemFontOfSize:24.0]];
    [timeLabel setTextColor:[UIColor redColor]];
    [timeLabel setBackgroundColor:[UIColor clearColor]];
    [timeLabel setTextAlignment:UITextAlignmentCenter]; 
    [imageView addSubview:timeLabel];
}
- (void)loadView {
    [super loadView];
    [self createViews];
    [self setView:imageView];
}
-(id)initWithAppDelegate:(id)appDelegate{
	self = [self init];
	self.title = @"Hakobe Dokei";
	delegate = appDelegate;
	return self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)viewDidUnload {
    imageView = nil;
}
- (void)viewWillDisappear:(BOOL)animated {	
    [imageView stopAnimating];
}
- (void)viewWillAppear:(BOOL)animated {	
    if([delegate respondsToSelector:@selector(timer)]){
        NSTimer *timer = [delegate timer];
        timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) 
                                             target:self
                                           selector:@selector(updateLabel)
                                           userInfo:nil
                                            repeats:YES];
    }
    [imageView startAnimating];
}
- (void)dealloc {
    [date release];
    [super dealloc];
}
- (void)updateLabel {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY/MM/dd kk:mm:ss"];
    timeLabel.text = [dateFormatter stringFromDate:[NSDate date]];
    [dateFormatter release];
}
@end
