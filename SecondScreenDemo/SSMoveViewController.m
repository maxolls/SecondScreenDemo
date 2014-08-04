//
//  SSMoveViewController.m
//  SecondScreenDemo
//
//  Created by Maxime Ollivier on 3/5/14.
//  Copyright (c) 2014 SolsticeMobile. All rights reserved.
//

#import "SSMoveViewController.h"
#import "SSSecondViewController.h"
#import "SSAppDelegate.h"

@interface SSMoveViewController ()

@end

@implementation SSMoveViewController

-(IBAction)rotatePressed:(id)sender{
    [[(SSAppDelegate*)[[UIApplication sharedApplication] delegate] secondController] rotate];
}

@end
