//
//  UIViewSampleViewController.m
//  UIViewSample
//
//  Created by Hsee.com on 8/27/13.
//  Copyright (c) 2013 Code4fun.cn. All rights reserved.
//

#import "UIViewSampleViewController.h"

@interface UIViewSampleViewController ()

@end

@implementation UIViewSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set the background
    [self.view setBackgroundColor:[UIColor redColor]];
    
    // create another new view
    CGRect rect = CGRectMake(40, 20, 200, 400);
    
    UIView * newView = [[UIView alloc] initWithFrame:rect];
    [newView setBackgroundColor:[UIColor brownColor]];
    
    // add this new sub-view to main-view
    [self.view addSubview:newView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
