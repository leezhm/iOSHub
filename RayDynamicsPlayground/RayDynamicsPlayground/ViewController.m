//
//  ViewController.m
//  RayDynamicsPlayground
//
//  Created by Hsee.com on 10/22/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIDynamicAnimator * animator;
@property (nonatomic, strong) UIGravityBehavior * gravity;
@property (nonatomic, strong) UICollisionBehavior * collision;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // add a UIView to current view
    UIView * square = [[UIView alloc] initWithFrame:CGRectMake(100, 60, 100, 100)];
    square.backgroundColor = [UIColor redColor];
    [self.view addSubview:square];
    
    // add barrier
    UIView * barrier = [[UIView alloc] initWithFrame:CGRectMake(0, 300, 120, 20)];
    barrier.backgroundColor = [UIColor grayColor];
    [self.view addSubview:barrier];
    
    // set UIKit and Gravity
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[square]];
    [self.animator addBehavior:self.gravity];
    
    // add the collision
    self.collision = [[UICollisionBehavior alloc] initWithItems:@[square]];
    self.collision.translatesReferenceBoundsIntoBoundary = YES;
    
    // set collision
    CGPoint rightEdge = CGPointMake(barrier.frame.origin.x + barrier.frame.size.width,
                                    barrier.frame.origin.y);
    [self.collision addBoundaryWithIdentifier:@"barrier" fromPoint:barrier.frame.origin toPoint:rightEdge];
    
    [self.animator addBehavior:self.collision];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
