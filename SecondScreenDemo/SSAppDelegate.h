//
//  SSAppDelegate.h
//  SecondScreenDemo
//
//  Created by Maxime Ollivier on 3/4/14.
//  Copyright (c) 2014 SolsticeMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SSSecondViewController;
@interface SSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIWindow *secondWindow;

@property (nonatomic,weak) SSSecondViewController *secondController;

@end
