//
//  FrontViewController.m
//  HakobeDokei
//
//  Created by 鈴木 うどん on 3/5/10.
//

#import "FrontViewController.h"


@implementation FrontViewController
- (void)info {
}
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)createViews {
}
- (void)loadView {
	[super loadView];
    self.view = [[[UIView alloc] initWithFrame: [[UIScreen mainScreen] applicationFrame]]autorelease];
	self.view.backgroundColor = [UIColor whiteColor];
	self.navigationItem.leftBarButtonItem =
	[[[UIBarButtonItem alloc]
	  initWithTitle:NSLocalizedString(@"Info", @"Info - for button to information")
	  style:UIBarButtonItemStylePlain
	  target: self 
	  action: @selector(info)] autorelease];
	[self createViews];
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
}
- (void)dealloc {
    [super dealloc];
	[delegate release];
}


@end
