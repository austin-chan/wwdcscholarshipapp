//
//  ViewControllerF.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/2/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerF.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerF ()

@end

@implementation ViewControllerF

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.frame = [UIScreen mainScreen].bounds;
    self.view.backgroundColor = [UIColor colorWithRed:140/255.0 green:209/255.0 blue:157/255.0 alpha:1];
    
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, self.theHeight)];
    scroll.contentSize = CGSizeMake(320, 1045);
    [self.view addSubview:scroll];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 30, 280, 30)];
    label.text = @"Something I often ask myself is";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:18];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 60, 280, 40)];
    label.text = @"Why do I code?";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:36];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"Because there are infinite possibilities"];
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica" size:24] range:NSMakeRange(0, 7)];
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, 280, 100)];
    label.attributedText = str;
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:24];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 220, 280, 100)];
    label.text = @"Because I enjoy the late nights spent coding";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:22];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);

    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 360, 280, 100)];
    label.text = @"Because it empowers me in a way that empowers others too";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:22];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 500, 280, 100)];
    label.text = @"Because I can have an impact on those who I care about the most";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:22];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 620, 280, 100)];
    label.text = @"Because the ladies love it ;)";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:22];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    UIImageView *imgur = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"girls.jpg"]];
    imgur.frame = CGRectMake(0, 720, 320, 228.5);
    [scroll addSubview:imgur];

    
    // ------------------Final Buttons------------------
    UIButton *button = [NextButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(320 - 75 - 10, scroll.contentSize.height - 75 - 10, 75, 75);
    [button addTarget:self.owner action:@selector(nextStep) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
    [scroll addSubview:button];
    button = nil;
    
    button = [PrevButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, scroll.contentSize.height - 50 - 10, 50, 50);
    [button addTarget:self.owner action:@selector(prevStep) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
    [scroll addSubview:button];
    // =================================================
}

@end
