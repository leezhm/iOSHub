//
//  CAViewController.m
//  CoreAnimation1
//
//  Created by Zhengmin.li on 9/11/13.
//  Copyright (c) 2013 Jerry.li. All rights reserved.
//

#import "CAViewController.h"

@interface CAViewController ()

@end

@implementation CAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set the background
    [self.view setBackgroundColor:[UIColor purpleColor]];
    
    // detect the version of current device
//    CGRect bounds = [[UIScreen mainScreen] bounds];
//    
//    NSString * imgPath = @"";
    
//    // method 1
//    if(DBL_EPSILON > fabs(bounds.size.height - (double)568.0))
//    {
//        NSLog(@"iPhone 5 ...");
//    }
//    else if(DBL_EPSILON > fabs(bounds.size.height - (double)480.0))
//    {
//        NSLog(@"iPhone4/4s ...");
//    }
    
//    // method 2
//    if(CGSizeEqualToSize(CGSizeMake(320.0, 568.0), bounds.size))
//    {
//        NSLog(@"iPhone 5 ...");
//        imgPath = @"iOS5";
//    }
//    else if(CGSizeEqualToSize(CGSizeMake(320.0, 480.0), bounds.size))
//    {
//        NSLog(@"iPhone 4/4s ...");
//        imgPath = @"iOS4";
//    }
//    
//    // create a UIImage
//    UIImage * img = [UIImage imageNamed:imgPath];
//    
//    // create a UIImageView
//    UIImageView * imgView = [[UIImageView alloc] initWithImage:img];
//    [imgView setFrame:CGRectMake(0, 0, bounds.size.width, bounds.size.height)];
//    
//    // add this image to current view
//    [self.view addSubview:imgView];
    
    // add a button to current view
    UIButton * btnDropImageView = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDropImageView setFrame:CGRectMake(40, 40, 80, 40)];
    [btnDropImageView setTitle:@"弹入弹出" forState:UIControlStateNormal];
    [btnDropImageView addTarget:self action:@selector(btnDropImageViewEventHandler) forControlEvents:UIControlEventTouchUpInside];
    
    // add
    [self.view addSubview:btnDropImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnDropImageViewEventHandler
{
    //
    NSString * imgPath = @"";
    CGRect bounds = [[UIScreen mainScreen] bounds];
    
    if(CGSizeEqualToSize(bounds.size, CGSizeMake(320.0, 568.0)))
    {
        imgPath = @"iOS5";
    }
    else if(CGSizeEqualToSize(bounds.size, CGSizeMake(320.0, 480.0)))
    {
        imgPath = @"iOS4";
    }
    
    UIImageView * imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imgPath]];
    [imgView setFrame:CGRectMake(0, 0, bounds.size.width, bounds.size.height)];

    [self.view addSubview:imgView];

}

@end
