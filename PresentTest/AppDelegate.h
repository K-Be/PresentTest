//
//  AppDelegate.h
//  PresentTest
//
//  Created by Andrew Romanov on 19.01.15.
//  Copyright (c) 2015 Andrew Romanov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController* firstNavController;
@property (strong, nonatomic) UINavigationController* secondNavController;
@property (strong, nonatomic) UITabBarController* tabBarController;

@end

