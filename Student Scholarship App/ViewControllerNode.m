//
//  ViewControllerNode.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/1/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerNode.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewControllerNode ()

@end

@implementation ViewControllerNode

@synthesize owner, excess, theHeight;

- (void)viewDidLoad{
    [super viewDidLoad];
    
    if([[UIScreen mainScreen] bounds].size.height == 568){
        excess = 44;
        theHeight = 548;
    }else{
        excess = 0;
        theHeight = 460;
    }
    
    self.view.layer.shadowColor = [UIColor colorWithWhite:0 alpha:1].CGColor;
    self.view.layer.shadowOpacity = 1;
    self.view.layer.shadowOffset = CGSizeMake(0, 0);
    self.view.layer.shadowRadius = 3;
}

- (void)buttonUp:(UIButton *)sender{
    sender.backgroundColor = [UIColor colorWithWhite:.2 alpha:.58];
    [UIView animateWithDuration:.1 animations:^{
        sender.transform = CGAffineTransformScale(sender.transform, 1/1.1, 1/1.1);
    }];
}
- (void)buttonDown:(UIButton *)sender{
    sender.backgroundColor = [UIColor colorWithWhite:.2 alpha:1];
    [UIView animateWithDuration:.1 animations:^{
        sender.transform = CGAffineTransformScale(sender.transform, 1.1, 1.1); 
    }];
}

@end
