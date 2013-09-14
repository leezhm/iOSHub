//
//  CALViewController.m
//  CALayerSample1
//
//  Created by Hsee.com on 9/12/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "CALViewController.h"

#import <QuartzCore/QuartzCore.h>

#import "DelegateView.h"

@interface CALViewController ()

@end

@implementation CALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect bounds = [[UIScreen mainScreen] bounds];
    NSString * file = @"";
    
    if(CGSizeEqualToSize(bounds.size, CGSizeMake(320.0f, 568.0f)))
    {
        file = @"Images/iOS5";
    }
    else if(CGSizeEqualToSize(bounds.size, CGSizeMake(320.0f, 480.0f)))
    {
        file = @"Images/iOS4";
    }
    
    //
    UIImage * img = [UIImage imageNamed:file];
    self.view.layer.contents = (__bridge id)(img.CGImage);
    
    UITapGestureRecognizer * tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self
                                        action:@selector(tapGestureEventHandler:)];
    
    [self.view addGestureRecognizer:tapRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapGestureEventHandler:(UITapGestureRecognizer *)recognizer
{
//    UIView * delegateView = [[DelegateView alloc] initWithFrame:self.view.frame];
//    
//    [UIView transitionFromView:self.view toView:delegateView duration:1.0f
//                       options:UIViewAnimationOptionTransitionFlipFromRight completion:nil];
    
    UIImageView * pushImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Images/Other"]];
    [pushImageView setFrame:self.view.frame];
    
    [UIView transitionFromView:self.view toView:pushImageView duration:1.0f
                       options:UIViewAnimationOptionTransitionFlipFromBottom completion:nil];
}

@end
