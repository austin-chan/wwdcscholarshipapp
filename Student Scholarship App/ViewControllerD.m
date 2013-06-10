//
//  ViewControllerD.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/2/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerD.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerD ()

@property UIImageView *toppic;

@end

@implementation ViewControllerD

@synthesize toppic;

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
    self.view.backgroundColor = [UIColor blackColor];
    
    UIImageView *imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"chronsite.png"]];
    imgview.frame = CGRectMake(0, -10, 320, 229);
    [self.view addSubview:imgview];
    toppic = imgview;
    imgview = nil;
    
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, self.theHeight)];
    scroll.contentSize = CGSizeMake(320, 860);
    scroll.delegate = self;
    [self.view addSubview:scroll];
    
    
    UIView *rect = [[UIView alloc] initWithFrame:CGRectMake(0, 198, 320, 260)];
    rect.backgroundColor = [UIColor colorWithRed:206/255.0 green:232/255.0 blue:121/255.0 alpha:1];
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    [rect.layer addSublayer:layer];
    [scroll addSubview:rect];
    rect = nil;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 198, 260, 260)];
    label.text = @"One project of mine I am most proud of in particular, the website I made for my high school's newspaper (hwchronicle.com). I started with a blank WordPress installation and completely designed and hardcoded everything from scratch.";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:18];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 458, 320, 190)];
    rect.backgroundColor = [UIColor colorWithRed:206/255.0 green:232/255.0 blue:121/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    [rect.layer addSublayer:layer];
    [scroll addSubview:rect];
    rect = nil;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 458, 260, 190)];
    label.text = @"It was a lot of work, but the site is user-friendly enough that all 70 staffers can use and manage the website fully on their own.  We are now approaching half a million pageviews since launch!";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:18];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 648, 320, 210)];
    rect.backgroundColor = [UIColor colorWithRed:206/255.0 green:232/255.0 blue:121/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    [rect.layer addSublayer:layer];
    [scroll addSubview:rect];
    rect = nil;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 648, 260, 110)];
    label.text = @"The website won Best in Show at the NSPA Fall Journalism Convention.";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:17];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
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

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat scrollY = scrollView.contentOffset.y;
    
    toppic.frame = CGRectMake(0, -scrollY/2.5 - 10, 320, 229);
}

@end
