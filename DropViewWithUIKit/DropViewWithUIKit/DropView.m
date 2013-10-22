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

@end

@implementation DropView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        // load a image
        UIImage * img = [UIImage imageNamed:@"Introduction"];
        
        // set bounds
        self.frame = CGRectMake(0, 0, img.size.width, img.size.height);
        self.bounds = self.frame;
        
        // set the background
        self.backgroundColor = [[UIColor alloc] initWithPatternImage:img];
        
        NSLog(@"Self Bounds %@", NSStringFromCGRect(self.bounds));
        
        // init the UIKit
        self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.superview];
        
        // Assume the view is offscreen. Use a Snap behaviour to position it in the center of the screen.
        UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
        
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
    
    // Adjust our keyWindow's tint adjustment mode to make everything behind the alert view dimmed
    keyWindow.tintAdjustmentMode = UIViewTintAdjustmentModeDimmed;
    [keyWindow tintColorDidChange];
    
    NSLog(@"Key Window %@, Description : %@", NSStringFromCGRect(self.frame), keyWindow.description);
    
    // Animate in the background blind
    
    self.alpha = 0.0f;
    [UIView animateWithDuration:0.1f animations:^{
        self.alpha = 1.0f;
        NSLog(@"alpha = %f", self.alpha);
    }];
    
    // Use UIKit Dynamics to make the alertView appear.
    UISnapBehavior *snapBehaviour = [[UISnapBehavior alloc] initWithItem:self snapToPoint:keyWindow.center];
    snapBehaviour.damping = 0.45f;
    [self.animator addBehavior:snapBehaviour];
}

- (void)dissView
{
    // Assume that the view is currently in the center of the screen. Add some gravity to make it disappear.
    // It *should* disappear before the animation fading away the background completes.
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    [self.animator removeAllBehaviors];
    
    UIGravityBehavior *gravityBehaviour = [[UIGravityBehavior alloc] initWithItems:@[self]];
    gravityBehaviour.gravityDirection = CGVectorMake(0.0f, 12.0f);
    [self.animator addBehavior:gravityBehaviour];
    
    UIDynamicItemBehavior *itemBehaviour = [[UIDynamicItemBehavior alloc] initWithItems:@[self]];
    [itemBehaviour addAngularVelocity:-M_PI_2 forItem:self];
    [self.animator addBehavior:itemBehaviour];
    
    // Animate out our background blind
    [UIView animateWithDuration:0.8f animations:^{
        self.alpha = 0.0f;
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
    [self dissView];
    NSLog(@"event : %@", event.description);
}

@end
