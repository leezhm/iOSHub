//
//  UIScrollViewSampleViewController.m
//  UIScrollViewSample
//
//  Created by Zhengmin.li on 8/29/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import "UIScrollViewSampleViewController.h"

@interface UIScrollViewSampleViewController ()

@end

@implementation UIScrollViewSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // create an UIScrollView and init it
    UIScrollView * scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 10, 300, 400)];
    [scrollView setBackgroundColor:[UIColor purpleColor]];
    [scrollView setContentSize:CGSizeMake(300, 1200)];
    
    [scrollView setContentSize:<#(CGSize)#>]
    
    // add scroll view
    [self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
