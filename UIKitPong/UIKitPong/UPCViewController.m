//
//  UPCViewController.m
//  UIKitPong
//
//  Created by Hsee.com on 10/21/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "UPCViewController.h"

#import "UPCCustomAnimator.h"

@interface UPCViewController ()

@property (nonatomic, strong) UIDynamicAnimator * animator;
@property (nonatomic, strong) UIGravityBehavior * gravity;
@property (nonatomic, strong) UICollisionBehavior * collision;

@property (nonatomic, strong) UIView * square;

@end

@implementation UPCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // create a rectangle
    self.square = [[UIView alloc] initWithFrame:CGRectMake(110, 55, 100, 100)];
    self.square.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.square];
    
    // UIDynamicAnimator
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
//    // Set the gravity attribute
//    self.gravity = [[UIGravityBehavior alloc] initWithItems: @[self.square]];
//    [self.animator addBehavior:self.gravity];
//    
//    // Set the collision attribute
//    self.collision = [[UICollisionBehavior alloc] initWithItems:@[self.square]];
//    self.collision.translatesReferenceBoundsIntoBoundary = YES;
//    [self.animator addBehavior:self.collision];
//    
//    // Set the elasticity
//    UIDynamicItemBehavior * elasticityBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[self.square]];
//    elasticityBehavior.elasticity = 0.75;
//    [self.animator addBehavior:elasticityBehavior];
    
    UPCCustomAnimator * behavior = [[UPCCustomAnimator alloc] initWithItem:@[self.square]];
    
    [self.animator addBehavior:behavior];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
