//
//  ViewControllerE.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/2/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerE.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerE ()

@end

@implementation ViewControllerE

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
    self.view.backgroundColor = [UIColor colorWithRed:252/255.0 green:182/255.0 blue:83/255.0 alpha:1];

    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, self.theHeight)];
    scroll.contentSize = CGSizeMake(320, 1395);
    [self.view addSubview:scroll];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 10, 260, 140)];
    label.text = @"Another project of mine is a free iPhone app and website I made this past holiday season.";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:18];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
    UIImageView *imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hwsantaicon"]];
    imgview.frame = CGRectMake(25, 160, 100, 100);
    [scroll addSubview:imgview];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(150, 160, 200, 100)];
    label.text = @"HW Santa";
    label.font = [UIFont fontWithName:@"Avenir-Heavy" size:30];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];

    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 260, 260, 350)];
    label.text = @"HW Santa was a school-wide secret santa with a couple twists. First, students chose their desired gift recipient from 5 randomly selected participants in the iPhone app.  But the fun didn't stop there. After you selected your recipient, you could chat with them through the app without compromising your identity.";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:18];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    imgview = [[UIImageView alloc] initWithFrame:CGRectMake(20, 610, 280, 420)];
    imgview.image = [UIImage imageNamed:@"comment.png"];
    imgview.layer.borderColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    imgview.layer.borderWidth = 1;
    [scroll addSubview:imgview];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 1015, 260, 350)];
    label.text = @"People used the chats in very hilarious and creative ways, for example, teasing their gift recipients and setting up scavenger hunts around campus.  Around 200 students signed up and gift exchange day turned out to be very crazy and hysterical!  It was very Exciting!";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:18];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
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
