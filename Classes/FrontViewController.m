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
    imageView.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"hakobe01.png"],
                                 [UIImage imageNamed:@"hakobe02.png"],
                                 nil];
    imageView.animationDuration = 1.0;
    [imageView stopAnimating];
    [imageView setIsAccessibilityElement:YES];
    [imageView setAccessibilityLabel:self.title];
}
- (void)loadView {
    [super loadView];
    self.view = [[[UIView alloc] initWithFrame: [[UIScreen mainScreen] applicationFrame]]autorelease];
    [self createViews];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view addSubview:imageView];
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
    [imageView startAnimating];
}
- (void)dealloc {
    [date release];
    [super dealloc];
}
@end
