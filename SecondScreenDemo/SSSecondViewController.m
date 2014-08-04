//
//  SSSecondViewController.m
//  SecondScreenDemo
//
//  Created by Maxime Ollivier on 3/5/14.
//  Copyright (c) 2014 SolsticeMobile. All rights reserved.
//

#import "SSSecondViewController.h"

@interface SSSecondViewController ()
@property (nonatomic,weak) IBOutlet UIView *box;
@end

@implementation SSSecondViewController

-(void)showRed{
    self.box.backgroundColor = [UIColor redColor];
}

-(void)showBlue{
    self.box.backgroundColor = [UIColor blueColor];
}

-(void)rotate{
    [UIView animateWithDuration:1
                          delay:0
         usingSpringWithDamping:.5
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.box.transform = CGAffineTransformMakeRotation(M_PI);
                     }
                     completion:^(BOOL finished) {
                         self.box.transform = CGAffineTransformIdentity;
                     }];
}

@end
