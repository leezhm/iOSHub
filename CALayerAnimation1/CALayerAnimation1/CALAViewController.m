//
//  CALAViewController.m
//  CALayerAnimation1
//
//  Created by Hsee.com on 9/12/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "CALAViewController.h"

#import <QuartzCore/QuartzCore.h>

@interface CALAViewController ()

@end

@implementation CALAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.c
    
    // create a new layer
    CALayer * squareLayer = [CALayer layer];
    squareLayer.backgroundColor = [[UIColor redColor] CGColor];
    squareLayer.frame = CGRectMake(100, 100, 40, 40);
    [self.view.layer addSublayer:squareLayer];
    
    UIView * squareView = [UIView new];
    squareView.backgroundColor = [UIColor purpleColor];
    squareView.frame = CGRectMake(200, 100, 40, 40);
    [self.view addSubview:squareView];
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self
                                    action:@selector(tapGestureEventHandler:)]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapGestureEventHandler:(UITapGestureRecognizer *)recognizer
{
    //[CATransaction setDisableActions:YES];

    [CATransaction setAnimationDuration:2.0f];

    NSArray * layers = self.view.layer.sublayers;
    CALayer * layer = [layers objectAtIndex:0];
    [layer setPosition:CGPointMake(200, 250)];
    
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    CABasicAnimation * anim = [CABasicAnimation animationWithKeyPath:@"opacity"];
    anim.fromValue = [NSNumber numberWithDouble:1.0];
    anim.toValue = [NSNumber numberWithDouble:0.0];
    anim.autoreverses = YES;
    anim.repeatCount = INFINITY;
    anim.duration = 2.0;
    [layer addAnimation:anim forKey:@"anim"];
    [CATransaction commit];

    
    NSArray * views = self.view.subviews;
    UIView * view = [views objectAtIndex:0];
    [view setCenter:CGPointMake(100, 250)];
}

@end
