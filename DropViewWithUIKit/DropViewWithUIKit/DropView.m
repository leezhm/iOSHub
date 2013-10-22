//
//  DropView.m
//  DropViewWithUIKit
//
//  Created by Hsee.com on 10/22/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "DropView.h"

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
    
    NSLog(@"Key Window %@, Description : %@", NSStringFromCGRect(self.frame), keyWindow.description);
    
    // Animate in the background blind
    [UIView animateWithDuration:3.4f animations:^{
        self.alpha = 1.0f;
        NSLog(@"alpha = %f", self.alpha);
    }];
    
    
}

- (void)dissView
{
    
}

@end
