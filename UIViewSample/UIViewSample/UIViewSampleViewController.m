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
    CGRect rect = CGRectMake(0, 0, 300, 400);
    
    UIView * newView = [[UIView alloc] initWithFrame:rect];
    
    // set background
    [newView setBackgroundColor:[UIColor brownColor]];
    
    NSLog(@"View Resolution W:%f H:%f", [self.view frame].size.width, [self.view frame].size.height);
    
    // set center
    [newView setCenter:CGPointMake([self.view frame].size.width / 2.0f , [self.view frame].size.height / 2.0f)];
    
    // set alpha
    [newView setAlpha:0.6f];
    
    // add this new sub-view to main-view
    [self.view addSubview:newView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
