//
//  SSFirstViewController.m
//  SecondScreenDemo
//
//  Created by Maxime Ollivier on 3/5/14.
//  Copyright (c) 2014 SolsticeMobile. All rights reserved.
//

#import "SSFirstViewController.h"
#import "SSSecondViewController.h"
#import "SSAppDelegate.h"

@interface SSFirstViewController ()

@end

@implementation SSFirstViewController

-(IBAction)redPressed:(id)sender{
    [[(SSAppDelegate*)[[UIApplication sharedApplication] delegate] secondController] showRed];
}

-(IBAction)bluePressed:(id)sender{
    [[(SSAppDelegate*)[[UIApplication sharedApplication] delegate] secondController] showBlue];
}

@end
