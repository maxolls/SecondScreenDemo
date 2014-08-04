//
//  SSAppDelegate.m
//  SecondScreenDemo
//
//  Created by Maxime Ollivier on 3/4/14.
//  Copyright (c) 2014 SolsticeMobile. All rights reserved.
//

#import "SSAppDelegate.h"
#import "SSSecondViewController.h"

@implementation SSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self checkForExistingScreenAndInitializeIfPresent];
    [self setUpScreenConnectionNotificationHandlers];
    return YES;
}

-(void)createSecondWindowWithScreen:(UIScreen*)sreen{
    CGRect screenBounds = sreen.bounds;
    
    self.secondWindow = [[UIWindow alloc] initWithFrame:screenBounds];
    self.secondWindow.screen = sreen;
    self.secondWindow.hidden = NO;
    
    self.secondController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Second"];
    [self.secondWindow setRootViewController:self.secondController];
}

#pragma mark - Notification

- (void)setUpScreenConnectionNotificationHandlers
{
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    
    [center addObserver:self selector:@selector(handleScreenDidConnectNotification:)
                   name:UIScreenDidConnectNotification object:nil];
    [center addObserver:self selector:@selector(handleScreenDidDisconnectNotification:)
                   name:UIScreenDidDisconnectNotification object:nil];
}

#pragma mark - Notification

- (void)checkForExistingScreenAndInitializeIfPresent
{
    if ([[UIScreen screens] count] > 1)
    {
        UIScreen *secondScreen = [[UIScreen screens] objectAtIndex:1];
        [self createSecondWindowWithScreen:secondScreen];
    }
}

- (void)handleScreenDidConnectNotification:(NSNotification*)aNotification
{
    if (!self.secondWindow)
    {
        UIScreen *newScreen = [aNotification object];
        [self createSecondWindowWithScreen:newScreen];
    }
}

- (void)handleScreenDidDisconnectNotification:(NSNotification*)aNotification
{
    if (self.secondWindow)
    {
        self.secondWindow.hidden = YES;
        self.secondWindow = nil;
    }
    
}


@end
