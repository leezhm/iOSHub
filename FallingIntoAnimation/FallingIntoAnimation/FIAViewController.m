//
//  FIAViewController.m
//  FallingIntoAnimation
//
//  Created by Hsee.com on 9/13/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "FIAViewController.h"

#import <QuartzCore/QuartzCore.h>

@interface FIAViewController ()

@property (nonatomic, strong)UILabel * fallingLabel;

@end

@implementation FIAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    self.fallingLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 20, 180, 40)];
//    [self.fallingLabel setText:@"Hello, A Falling Label"];
//    
//    self.fallingLabel.center = CGPointMake(160, 50);

//    UIImageView * imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Falling"]];
//    [imgView setFrame:CGRectMake(0, 0, 320, 200)];
//    
//    [self.view addSubview:imgView];
//    
    //[self.view addSubview:self.fallingLabel];
    
    UIImage * img = [UIImage imageNamed:@"Falling"];
    CALayer * layer = [CALayer new];
    layer.contents = (__bridge id)(img.CGImage);
    layer.frame = CGRectMake(120, 20, 220, 295);
    
    [self.view.layer addSublayer:layer];
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureEventHandler:)]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapGestureEventHandler:(UITapGestureRecognizer *)recognizer
{
//    [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^
//    {
//        self.fallingLabel.center = CGPointMake(160, 400);
//    }completion:nil];
    
    
}

@end
