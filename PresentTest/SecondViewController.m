//
//  SecondViewController.m
//  PresentTest
//
//  Created by Andrew Romanov on 19.01.15.
//  Copyright (c) 2015 Andrew Romanov. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) UIButton* present;

- (void)presentButtonAction:(id)sender;
- (void)closeAction:(id)sender;

@end


@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
	{
		self.title = @"Second";
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
	
	_present = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[_present setTitle:@"Present" forState:UIControlStateNormal];
	_present.frame = CGRectMake(10.0, 100.0, 100.0, 20.0);
	[_present addTarget:self
					 action:@selector(presentButtonAction:)
		forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:_present];
	[self.view addSubview:_present];
	
	if (self.navigationController.presentingViewController)
	{
		UIBarButtonItem* closeItem = [[UIBarButtonItem alloc] initWithTitle:@"close"
																						  style:UIBarButtonItemStylePlain
																						 target:self
																						 action:@selector(closeAction:)];
		self.navigationItem.leftBarButtonItem = closeItem;
	}
}


#pragma mark Action
- (void)presentButtonAction:(id)sender
{
	SecondViewController* controller = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
	controller.title = [NSString stringWithFormat:@"%@ sub", self.title];
	UINavigationController* navControl = [[UINavigationController alloc] initWithRootViewController:controller];
	[self presentViewController:navControl animated:YES completion:nil];
}


- (void)closeAction:(id)sender
{
	[self.navigationController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
