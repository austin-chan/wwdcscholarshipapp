//
//  PlutoViewController.m
//  Student Scholarship App
//
//  Created by Austin Chan on 5/1/13.
//  Copyright (c) 2013 Austin Chan. All rights reserved.
//

#import "PlutoViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "ViewControllerA.h"
#import "ViewControllerB.h"
#import "ViewControllerC.h"
#import "ViewControllerD.h"
#import "ViewControllerE.h"
#import "ViewControllerF.h"
#import "ViewControllerG.h"
#import "ViewControllerH.h"
#import "ViewControllerNode.h"

@interface PlutoViewController ()

@property NSMutableArray *viewsArray;
@property NSInteger currentIndex;
@property BOOL isAnimating;

@end

@implementation PlutoViewController

@synthesize viewsArray, currentIndex, isAnimating;

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

    viewsArray = [NSMutableArray array];
    
    // -----------------Adding the nodes-----------------
    ViewControllerNode *nodeA = [[ViewControllerA alloc] init];
    nodeA.owner = self;
    [viewsArray addObject:nodeA];
    
    ViewControllerNode *nodeB = [[ViewControllerB alloc] init];
    nodeB.owner = self;
    [viewsArray addObject:nodeB];
    
    ViewControllerNode *nodeC = [[ViewControllerC alloc] init];
    nodeC.owner = self;
    [viewsArray addObject:nodeC];
    
    ViewControllerNode *nodeD = [[ViewControllerD alloc] init];
    nodeD.owner = self;
    [viewsArray addObject:nodeD];
    
    ViewControllerNode *nodeE = [[ViewControllerE alloc] init];
    nodeE.owner = self;
    [viewsArray addObject:nodeE];
    
    ViewControllerNode *nodeF = [[ViewControllerF alloc] init];
    nodeF.owner = self;
    [viewsArray addObject:nodeF];
    
    ViewControllerNode *nodeG = [[ViewControllerG alloc] init];
    nodeG.owner = self;
    [viewsArray addObject:nodeG];
    
    ViewControllerNode *nodeH = [[ViewControllerH alloc] init];
    nodeH.owner = self;
    [viewsArray addObject:nodeH];
    
    // -----------------Setting up the first node-----------------
    [self.view addSubview:nodeA.view];
    currentIndex = 0;

}

- (void)nextStep{
    if(isAnimating){
        return;
    }
    
    isAnimating = YES;
    
    ViewControllerNode *fromNode = [viewsArray objectAtIndex:currentIndex];
    currentIndex++;
    ViewControllerNode *toNode = [viewsArray objectAtIndex:currentIndex];

    [UIView animateWithDuration:.58 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        CATransform3D _3Dt = CATransform3DIdentity;
        _3Dt.m34 = 1.0 / -1400;
        _3Dt = CATransform3DTranslate(_3Dt, -150, 0, 0);
        _3Dt = CATransform3DRotate(_3Dt, M_PI * 1.5, 0.0, 1, 0.0);
        _3Dt = CATransform3DTranslate(_3Dt, 260, 0, 0);
        fromNode.view.layer.transform = _3Dt;
    }completion:^(BOOL finished){
        [fromNode.view removeFromSuperview];
        isAnimating = NO;
    }];
    
    [self.view addSubview:toNode.view];
    [self.view sendSubviewToBack:toNode.view];
    
}

- (void)prevStep{
    if(isAnimating){
        return;
    }
    isAnimating = YES;
    
    ViewControllerNode *fromNode = [viewsArray objectAtIndex:currentIndex];
    currentIndex--;
    ViewControllerNode *toNode = [viewsArray objectAtIndex:currentIndex];
    
    [UIView animateWithDuration:.58 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        CATransform3D _3Dt = CATransform3DIdentity;
        toNode.view.layer.transform = _3Dt;
    }completion:^(BOOL finished){
        [fromNode.view removeFromSuperview];
        isAnimating = NO;
    }];
    
    [self.view addSubview:toNode.view];
}

@end
