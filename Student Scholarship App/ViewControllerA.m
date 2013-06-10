//
//  ViewControllerA.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/1/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerA.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerA ()

@end

@implementation ViewControllerA

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.frame = [UIScreen mainScreen].bounds;
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"blue"]];
    
    UIImageView *circle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"circly.jpg"]];
    circle.layer.cornerRadius = 120/2;
    circle.layer.masksToBounds = YES;
    circle.layer.borderColor = [UIColor colorWithWhite:0 alpha:1].CGColor;
    circle.layer.borderWidth = .5;
    circle.layer.shouldRasterize = YES;
    circle.layer.rasterizationScale = [UIScreen mainScreen].scale;
    [self.view addSubview:circle];
    
    circle.alpha = 0;
    circle.frame = CGRectMake(100, 15 + self.excess, 120, 120);
    [UIView animateWithDuration:.9 delay:.9 options:UIViewAnimationOptionCurveEaseOut animations:^{
        circle.frame = CGRectMake(100, 30 + self.excess, 120, 120);
        circle.alpha = 1;
    }completion:nil];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 145 + self.excess, 320, 50)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Hi, my name is";
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Avenir" size:28];
    label.textColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    label.shadowColor = [UIColor colorWithWhite:.2 alpha:.8];
    [self.view addSubview:label];
    
    label.alpha = 0;
    [UIView animateWithDuration:.8 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        label.frame = CGRectMake(0, 170 + self.excess, 320, 50);
        label.alpha = 1;
    }completion:nil];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 205 + self.excess, 320, 100)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Austin Chan";
    label.font = [UIFont fontWithName:@"Avenir" size:48];
    label.backgroundColor = [UIColor colorWithWhite:.2 alpha:.58];
    label.textColor = [UIColor colorWithWhite:1 alpha:1];
    label.shadowColor = [UIColor colorWithWhite:0 alpha:.7];
    label.shadowOffset = CGSizeMake(0, .5);
    [self.view addSubview:label];
    
    label.alpha = 0;
    [UIView animateWithDuration:.7 delay:.9 options:UIViewAnimationOptionCurveEaseOut animations:^{
        label.alpha = 1;
        label.frame = CGRectMake(0, 230 + self.excess, 320, 100);
    }completion:nil];

    UIButton *button = [NextButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(320 - 75 - 10, self.theHeight - 75 - 10, 75, 75);
    [button addTarget:self.owner action:@selector(nextStep) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:button];
    button = nil;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
