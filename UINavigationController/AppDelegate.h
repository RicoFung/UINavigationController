//
//  AppDelegate.h
//  UINavigationController
//
//  Created by mac373 on 16/1/20.
//  Copyright © 2016年 ole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) RootViewController *mRootViewController;
@property (strong, nonatomic) UINavigationController *mUINavigationController;

@end

