//
//  PrevButton.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/1/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "PrevButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation PrevButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:.2 alpha:.58];
        self.layer.cornerRadius = 50/2;
        self.layer.borderColor = [UIColor colorWithWhite:.9 alpha:1].CGColor;
        self.layer.borderWidth = 3;
        self.layer.shouldRasterize = YES;
        self.layer.rasterizationScale = [UIScreen mainScreen].scale;
        
        UIImageView *imgur = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"lefty"]];
        imgur.frame = CGRectMake(10, 10, 30, 30);
        [self addSubview:imgur];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
