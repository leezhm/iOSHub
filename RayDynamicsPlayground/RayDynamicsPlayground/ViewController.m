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
    
    // set UIKit and Gravity
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.gravity = [[UIGravityBehavior alloc] initWithItems:@[square]];
    [self.animator addBehavior:self.gravity];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
