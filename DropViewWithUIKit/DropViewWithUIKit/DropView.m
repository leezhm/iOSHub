//
//  DropView.m
//  DropViewWithUIKit
//
//  Created by Hsee.com on 10/22/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "DropView.h"

#import <UIKit/UIKit.h>

@interface DropView ()

@property (nonatomic, strong) UIDynamicAnimator * animator;

@property (nonatomic, strong) UIView * dropView;

@end

@implementation DropView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        // Assume the view is offscreen. Use a Snap behaviour to position it in the center of the screen.
        UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
        
        // set the whole view frame
        self.frame = keyWindow.bounds;
        NSLog(@"The whole view bounds %@", NSStringFromCGRect(self.frame));
        
        // load a image
        UIImage * img = [UIImage imageNamed:@"Introduction"];
        
        // set drop view
        self.dropView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, img.size.width, img.size.height)];
    
        // set the background
        self.dropView.backgroundColor = [[UIColor alloc] initWithPatternImage:img];
        
        [self addSubview:self.dropView];
        
        // init the UIKit
        self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self];
        
        // Adjust our keyWindow's tint adjustment mode to make everything behind the alert view dimmed
        keyWindow.tintAdjustmentMode = UIViewTintAdjustmentModeDimmed;
        [keyWindow tintColorDidChange];
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

- (void)showView
{
    // Assume the view is offscreen. Use a Snap behaviour to position it in the center of the screen.
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    [keyWindow addSubview:self];

    // Animate in the background blind
    self.dropView.alpha = 0.0f;
    [UIView animateWithDuration:0.1f animations:^{
        self.dropView.alpha = 1.0f;
        NSLog(@"alpha = %f", self.alpha);
    }];
    
    // Use UIKit Dynamics to make the alertView appear.
    UISnapBehavior *snapBehaviour = [[UISnapBehavior alloc] initWithItem:self.dropView snapToPoint:keyWindow.center];
    snapBehaviour.damping = 0.45f;
    [self.animator addBehavior:snapBehaviour];
}

- (void)dissView
{
    // Assume that the view is currently in the center of the screen. Add some gravity to make it disappear.
    // It *should* disappear before the animation fading away the background completes.
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    [self.animator removeAllBehaviors];
    
    UIGravityBehavior *gravityBehaviour = [[UIGravityBehavior alloc] initWithItems:@[self.dropView]];
    gravityBehaviour.gravityDirection = CGVectorMake(0.0f, 12.0f);
    [self.animator addBehavior:gravityBehaviour];
    
    UIDynamicItemBehavior *itemBehaviour = [[UIDynamicItemBehavior alloc] initWithItems:@[self.dropView]];
    [itemBehaviour addAngularVelocity:-M_PI_2 forItem:self];
    [self.animator addBehavior:itemBehaviour];
    
    // Animate out our background blind
    [UIView animateWithDuration:0.8f animations:^{
        self.dropView.alpha = 0.0f;
        keyWindow.tintAdjustmentMode = UIViewTintAdjustmentModeAutomatic;
        [keyWindow tintColorDidChange];
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        // Very important!
        //self.retainedSelf = nil;
    }];

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [[event allTouches] anyObject];
    
    CGPoint point = [touch locationInView:self];

    if (CGRectContainsPoint(self.dropView.frame, point)) {
        NSLog(@"touch the drop view");
        [self dissView];
    }
}

@end
