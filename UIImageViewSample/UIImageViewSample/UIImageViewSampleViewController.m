//
//  UIImageViewSampleViewController.m
//  UIImageViewSample
//
//  Created by Zhengmin.li on 8/27/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import "UIImageViewSampleViewController.h"

@interface UIImageViewSampleViewController ()

@end

@implementation UIImageViewSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    // create a UIImageView
//    UIImage * img = [UIImage imageNamed:@"Resource/magic"];
//
//    NSLog(@"image width:%f and height:%f", [img size].width, [img size].height);
//    NSLog(@"Main View Center x:%f and y:%f", [self.view center].x, [self.view center].y);
//    NSLog(@"Main View width:%f and height:%f", [self.view bounds].size.width, [self.view bounds].size.height);
//
//    UIImageView * imgView = [[UIImageView alloc] initWithImage:img];
//    [imgView setFrame:CGRectMake(0, 0, [self.view bounds].size.width, [self.view bounds].size.height)];
//    [imgView setBackgroundColor:[UIColor redColor]];
//
//    // add sub-view
//    [self.view addSubview:imgView];
    
    
//    // UIImage Animation
//    UIImageView * AnimationView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [self.view bounds].size.width, [self.view bounds].size.height)];
//    
//    NSMutableArray * muArray = [[NSMutableArray alloc] initWithCapacity:80];
//    
//    for (int i = 1; i <= 80; ++ i) {
//        
//        NSString * file = [NSString stringWithFormat:@"Resource/CompleteAnimation/%i", i];
//        
//        //NSLog(@"%@", file);
//        
//        [muArray addObject:[UIImage imageNamed:file]];
//    }
//    
//    [AnimationView setAnimationImages:muArray];
//    [AnimationView setAnimationDuration:3.0];
//    
//    [self.view addSubview:AnimationView];
//    
//    [AnimationView startAnimating];
    
    
    UIImageView *hpView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Resource/homePage"]];
    
    //NSLog(@"width:%f and height:%f", )
    
    [hpView setFrame:CGRectMake(0, 0, [self.view bounds].size.width, [self.view bounds].size.height)];
    
    [self.view addSubview:hpView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
