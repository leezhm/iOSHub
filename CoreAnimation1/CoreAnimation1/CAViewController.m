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
    CGRect bounds = [[UIScreen mainScreen] bounds];
    
    NSString * imgPath = @"";
    
//    // method 1
//    if(DBL_EPSILON > fabs(bounds.size.height - (double)568.0))
//    {
//        NSLog(@"iPhone 5 ...");
//    }
//    else if(DBL_EPSILON > fabs(bounds.size.height - (double)480.0))
//    {
//        NSLog(@"iPhone4/4s ...");
//    }
    
    // method 2
    if(CGSizeEqualToSize(CGSizeMake(320.0, 568.0), bounds.size))
    {
        NSLog(@"iPhone 5 ...");
        imgPath = @"iOS5";
    }
    else if(CGSizeEqualToSize(CGSizeMake(320.0, 480.0), bounds.size))
    {
        NSLog(@"iPhone 4/4s ...");
        imgPath = @"iOS4";
    }
    
    // create a UIImage
    UIImage * img = [UIImage imageNamed:imgPath];
    
    // create a UIImageView
    UIImageView * imgView = [[UIImageView alloc] initWithImage:img];
    [imgView setFrame:CGRectMake(0, 0, bounds.size.width, bounds.size.height)];
    
    // add this image to current view
    [self.view addSubview:imgView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
