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
    
    // create a UIImageView
    UIImage * img = [UIImage imageNamed:@"Resource/magic"];
    NSLog(@"image width:%f and height:%f", [img size].width, [img size].height);
    
    UIImageView * imgView = [[UIImageView alloc] initWithImage:img];
    [imgView setFrame:CGRectMake(0, 0, [img size].width, [img size].height)];
    [imgView setBackgroundColor:[UIColor redColor]];
    
    // add sub-view
    [self.view addSubview:imgView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
