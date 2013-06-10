//
//  ViewControllerH.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/2/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerH.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerH ()

@end

@implementation ViewControllerH

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
    self.view.backgroundColor = [UIColor colorWithRed:92/255.0 green:172/255.0 blue:196/255.0 alpha:1];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 60+self.excess, 290, 200)];
    label.text = @"I code because with the right cause, I know I can do something amazing";
    label.font = [UIFont fontWithName:@"Avenir" size:32];
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.textAlignment = NSTextAlignmentCenter;
    label.shadowOffset = CGSizeMake(0, .5);
    [self.view addSubview:label];
    
    UIImageView *imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"apple"]];
    imgview.frame = CGRectMake(122.5, 265+self.excess, 75, 82);
    [self.view addSubview:imgview];

    
    UIButton *button = [PrevButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, self.theHeight - 50 - 10, 50, 50);
    [button addTarget:self.owner action:@selector(prevStep) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonDown:) forControlEvents:UIControlEventTouchDown];
    [button addTarget:self action:@selector(buttonUp:) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:button];
}

@end
