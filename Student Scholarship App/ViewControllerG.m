//
//  ViewControllerG.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/2/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerG.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerG ()

@end

@implementation ViewControllerG

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
    scroll.contentSize = CGSizeMake(320, 1045);
    [self.view addSubview:scroll];

    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 214)];
    img.image = [UIImage imageNamed:@"griffith.jpg"];
    [scroll addSubview:img];
    
    UIView *topPart = [[UIView alloc] initWithFrame:CGRectMake(0, 214, 320, 140)];
    topPart.backgroundColor = [UIColor colorWithRed:92/255.0 green:172/255.0 blue:196/255.0 alpha:1];
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 139.5, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    topPart.layer.shadowColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    topPart.layer.shadowOffset = CGSizeMake(0, 0);
    topPart.layer.shadowOpacity = 1;
    topPart.layer.shadowRadius = 2;
    topPart.layer.shouldRasterize = YES;
    topPart.layer.rasterizationScale = [UIScreen mainScreen].scale;
    [scroll addSubview:topPart];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 280, 140)];
    label.text = @"I thought the best way to describe myself is to see what others had to say about me. My friend asked other students what they thought of me, and here's what they said:";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:16];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [topPart addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 374, 280, 100)];
    label.text = @"\"Austin chan is a guy that will always be willing to talk to you, never ignore you or shuffle away, just all all around pleasant, and deeply caring, dude.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 484, 280, 100)];
    label.text = @"\"Austin has the pure talent of Kendrick Lamar, the humility of Anna Kendrick and the humor of Lamar Odom.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 594, 280, 50)];
    label.text = @"\"He is a self-employed, motivated tech wiz full of idiosyncrasies.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 654, 280, 100)];
    label.text = @"\"Austin chan is caring, intelligent and underratedly funny.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 734, 280, 100)];
    label.text = @"\"I truly do not know almost anything about Austin chan. He better not be reading this.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 834, 280, 50)];
    label.text = @"\"Austin chan has messy hair and likes water.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 894, 280, 50)];
    label.text = @"\"Chan-tastic.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(20, 954, 280, 50)];
    label.text = @"\"The little Asian hacker.\"";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:14];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    
    
    
    UIButton *button = [NextButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(320 - 75 - 10, self.theHeight - 75 - 10, 75, 75);
    [button addTarget:self.owner action:@selector(nextStep) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:button];
    button = nil;
    
    button = [PrevButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, self.theHeight - 50 - 10, 50, 50);
    [button addTarget:self.owner action:@selector(prevStep) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:button];
}

@end
