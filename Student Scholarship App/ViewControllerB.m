//
//  ViewControllerB.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/1/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "ViewControllerB.h"
#import <QuartzCore/QuartzCore.h>
#import "NextButton.h"
#import "PrevButton.h"

@interface ViewControllerB ()

@property UIImageView *losangeles;
@property UIView *uno, *dos, *tres, *quatro;

@end

@implementation ViewControllerB

@synthesize losangeles, uno, dos, tres, quatro;

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
    self.view.backgroundColor = [UIColor blackColor];
    
    UIImageView *imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ringceremony.jpg"]];
    imgview.frame = CGRectMake(0, -20, 320, 229);
    [self.view addSubview:imgview];
    losangeles = imgview;
    imgview = nil;
        
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, self.theHeight)];
    scroll.contentSize = CGSizeMake(320, 1520);
    scroll.delegate = self;
    [self.view addSubview:scroll];

    UIView *rect = [[UIView alloc] initWithFrame:CGRectMake(0, 198, 320, 170)];
    rect.backgroundColor = [UIColor colorWithRed:140/255.0 green:209/255.0 blue:157/255.0 alpha:1];
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:0 alpha:.8].CGColor;
    [rect.layer addSublayer:layer];
    [scroll addSubview:rect];
    rect = nil;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 198, 260, 170)];
    label.text = @"I am a high school senior graduating cum laude from Harvard-Westlake in Los Angeles and will be at Cornell studying CS next year";
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:19];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 365, 320, 135)];
    rect.backgroundColor = [UIColor colorWithRed:206/255.0 green:232/255.0 blue:121/255.0 alpha:1];
    [scroll addSubview:rect];
    rect = nil;
    
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc] initWithString:@"Beyond that, I dream of becoming the next Mark Zuckerberg, Mahatma Gandhi, Steve Jobs, Tim Cook"];
    [attr addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInt:2] range:NSMakeRange(42, 16)];
    [attr addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInt:2] range:NSMakeRange(59, 14)];
    [attr addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInt:2] range:NSMakeRange(75, 10)];
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 365, 260, 135)];
    label.attributedText = attr;
    label.numberOfLines = 0;
    label.font = [UIFont fontWithName:@"Avenir" size:19];
    label.backgroundColor = [UIColor clearColor];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    [scroll addSubview:label];
    label = nil;
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 500, 320, 155)];
    rect.backgroundColor = [UIColor colorWithRed:252/255.0 green:182/255.0 blue:83/255.0 alpha:1];
    [scroll addSubview:rect];
    rect = nil;

    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 500, 260, 155)];
    label.text = @"Here are some things I've really enjoyed doing during high school:";
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"AvenirNext-DemiBold" size:20];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    label.textAlignment = NSTextAlignmentCenter;
    [scroll addSubview:label];
    label = nil;

    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 35)];
    rect.backgroundColor = [UIColor colorWithRed:92/255.0 green:172/255.0 blue:196/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 34.5, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];

    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 260, 35)];
    label.text = @"Saxophone";
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Avenir-Heavy" size:16];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    label.textAlignment = NSTextAlignmentCenter;
    
    imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"jazz.jpg"]];
    imgview.frame = CGRectMake(0, 35, 320, 229);
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 655, 320, 264)];
    [view addSubview:rect];
    [view addSubview:label];
    [view addSubview:imgview];
    rect = nil;
    label = nil;
    imgview = nil;
    [scroll addSubview:view];
    uno = view;
    view = nil;
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 35)];
    rect.backgroundColor = [UIColor colorWithRed:92/255.0 green:172/255.0 blue:196/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 34.5, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 260, 35)];
    label.text = @"Swimming";
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Avenir-Heavy" size:16];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    label.textAlignment = NSTextAlignmentCenter;
    
    imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"swim.jpg"]];
    imgview.frame = CGRectMake(0, 35, 320, 229);
    
    view = [[UIView alloc] initWithFrame:CGRectMake(0, 919, 320, 264)];
    [view addSubview:rect];
    [view addSubview:label];
    [view addSubview:imgview];
    rect = nil;
    label = nil;
    imgview = nil;
    [scroll addSubview:view];
    dos = view;
    view = nil;
    
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 35)];
    rect.backgroundColor = [UIColor colorWithRed:92/255.0 green:172/255.0 blue:196/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 34.5, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 260, 35)];
    label.text = @"Rocketry";
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Avenir-Heavy" size:16];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    label.textAlignment = NSTextAlignmentCenter;
    
    imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"rockets.jpg"]];
    imgview.frame = CGRectMake(0, 35, 320, 229);
    
    view = [[UIView alloc] initWithFrame:CGRectMake(0, 1183, 320, 264)];
    [view addSubview:rect];
    [view addSubview:label];
    [view addSubview:imgview];
    rect = nil;
    label = nil;
    imgview = nil;
    [scroll addSubview:view];
    tres = view;
    view = nil;
    
    
    
    rect = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    rect.backgroundColor = [UIColor colorWithRed:92/255.0 green:172/255.0 blue:196/255.0 alpha:1];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];
    layer = [CALayer layer];
    layer.frame = CGRectMake(0, 39.5, 320, .5);
    layer.backgroundColor = [UIColor colorWithWhite:.2 alpha:1].CGColor;
    [rect.layer addSublayer:layer];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 260, 40)];
    label.text = @"But Most Importantly, CODING";
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont fontWithName:@"Avenir-Heavy" size:16];
    label.shadowColor = [UIColor colorWithWhite:.9 alpha:1];
    label.shadowOffset = CGSizeMake(0, .5);
    label.textAlignment = NSTextAlignmentCenter;
    
    imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"code.jpg"]];
    imgview.frame = CGRectMake(0, 40, 320, 229);
    
    view = [[UIView alloc] initWithFrame:CGRectMake(0, 1447, 320, 264)];
    [view addSubview:rect];
    [view addSubview:label];
    [view addSubview:imgview];
    rect = nil;
    label = nil;
    imgview = nil;
    [scroll addSubview:view];
    quatro = view;
    view = nil;
    
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
    
    losangeles.frame = CGRectMake(0, -scrollY/2.5 - 20, 320, 229);
    
    uno.frame = CGRectMake(0, 690 + 10 - scrollY/6, 320, 229);
    dos.frame = CGRectMake(0, 919 + 30 - scrollY/4.5, 320, 264);
    tres.frame = CGRectMake(0, 1183 + 70 - scrollY/3, 320, 264);
    quatro.frame = CGRectMake(0, 1447 + 180 - scrollY/2, 320, 264);
}

@end
