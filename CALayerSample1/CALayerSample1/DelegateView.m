//
//  DelegateView.m
//  CALayerSample1
//
//  Created by Hsee.com on 9/12/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "DelegateView.h"

#import <QuartzCore/QuartzCore.h>

@implementation DelegateView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self.layer setNeedsDisplay];
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

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    UIGraphicsPushContext(ctx);
    
    [[UIColor whiteColor] set];
    UIRectFill(layer.bounds);
    
    [[UIColor blackColor] set];
    UIFont * font = [UIFont systemFontOfSize:48.0];
    
    [@"Pushing The Limits" drawInRect:[layer bounds] withFont:font lineBreakMode:NSLineBreakByWordWrapping alignment:NSTextAlignmentCenter];
    
    UIGraphicsPopContext();
}

@end
