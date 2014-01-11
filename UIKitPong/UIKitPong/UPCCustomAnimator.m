//
//  UPCCustomAnimator.m
//  UIKitPong
//
//  Created by Hsee.com on 10/22/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "UPCCustomAnimator.h"

@implementation UPCCustomAnimator

- (instancetype)initWithItem:(NSArray *)items
{
    if (!(self = [super init])) {
        return nil;
    }
    
    // gravity
    UIGravityBehavior * gravity = [[UIGravityBehavior alloc] initWithItems:items];
    [self addChildBehavior:gravity];
    
    // collision
    UICollisionBehavior * collision = [[UICollisionBehavior alloc] initWithItems:items];
    collision.translatesReferenceBoundsIntoBoundary = YES;
    [self addChildBehavior:collision];
    
    // elasticity
    UIDynamicItemBehavior * elasticityBehavior = [[UIDynamicItemBehavior alloc] initWithItems:items];
    elasticityBehavior.elasticity = 0.75;
    [self addChildBehavior:elasticityBehavior];
    
    return self;
}

@end
