//
//  ViewControllerC.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/1/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerC.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerC ()

@property UIImageView *toppic;

@end

@implementation ViewControllerC

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
    
    UIImageView *imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"munger.jpg"]];
    imgview.frame = CGRectMake(0, -20, 320, 229);
    [self.view addSubview:imgview];
    toppic = imgview;
    imgview = nil;
    
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, self.theHeight)];
    scroll.contentSize = CGSizeMake(320, 910);
    scroll.delegate = self;
    [self.view addSubview:scroll];
    
    UIView *rect = [[UIView alloc] initWithFrame:CGRectMake(0, 198, 320, 190)];
    rect.backgroundColor = [UIColor colorWithRed:252/255.0 green:182/255.0 blue:83/255.0 alpha:1];
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    [rect.layer addSublayer:layer];
    [scroll addSubview:rect];
    rect = nil;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 198, 260, 190)];
    label.text = @"This summer I worked as a web developer/designer for Coalition Technologies, a small web design company (coalitiontechnologies.com) for 6 weeks.";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:19];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 388, 320, 170)];
    rect.backgroundColor = [UIColor colorWithRed:252/255.0 green:182/255.0 blue:83/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    [rect.layer addSublayer:layer];
    [scroll addSubview:rect];
    rect = nil;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 388, 260, 170)];
    label.text = @"Although I am a solid iOS programmer (and still learning!), I am a more experienced web programmer.";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:19];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 558, 320, 250)];
    rect.backgroundColor = [UIColor colorWithRed:252/255.0 green:182/255.0 blue:83/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    [rect.layer addSublayer:layer];
    [scroll addSubview:rect];
    rect = nil;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 558, 260, 250)];
    label.text = @"Languages I am extremely proficient in are: Javascript, PHP, MySQL, Objective-C, Java, CSS, HTML.  And I have extensive experience with many frameworks - jQuery, WordPress, CodeIgniter, Bootstrap, SASS, and more!";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:19];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat scrollY = scrollView.contentOffset.y;
    
    toppic.frame = CGRectMake(0, -scrollY/2.5 - 20, 320, 229);
}

@end
