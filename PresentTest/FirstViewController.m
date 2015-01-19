//
//  FirstViewController.m
//  PresentTest
//
//  Created by Andrew Romanov on 19.01.15.
//  Copyright (c) 2015 Andrew Romanov. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton* push;

- (void)pushButtonAction:(id)sender;

@end


@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
	{
		self.title = @"First";
	}
	
	return self;
}


- (void)loadView
{
	[super loadView];
	
	UIView* view = [[UIView alloc] initWithFrame:[UIApplication sharedApplication].keyWindow.bounds];
	view.backgroundColor = [UIColor whiteColor];
	self.view = view;
}


- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_push = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[_push setTitle:@"Push" forState:UIControlStateNormal];
	_push.frame = CGRectMake(10.0, 100.0, 100.0, 20.0);
	[_push addTarget:self action:@selector(pushButtonAction:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:_push];
}


#pragma mark Action
- (void)pushButtonAction:(id)sender
{
	FirstViewController* controller = [[FirstViewController alloc] initWithNibName:nil bundle:nil];
	controller.title = [NSString stringWithFormat:@"%@ sub", self.title];
	[self.navigationController pushViewController:controller animated:YES];
}

@end
