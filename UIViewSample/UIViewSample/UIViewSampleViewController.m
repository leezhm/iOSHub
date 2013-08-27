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
    
//    // set the background
//    [self.view setBackgroundColor:[UIColor redColor]];
//    
//    // create another new view
//    CGRect rect = CGRectMake(0, 0, 300, 400);
//    
//    UIView * newView = [[UIView alloc] initWithFrame:rect];
//    
//    // set background
//    [newView setBackgroundColor:[UIColor brownColor]];
//    
//    NSLog(@"View Resolution W:%f H:%f", [self.view frame].size.width, [self.view frame].size.height);
//    
//    // set center
//    [newView setCenter:CGPointMake([self.view frame].size.width / 2.0f , [self.view frame].size.height / 2.0f)];
//    
//    // set alpha
//    [newView setAlpha:0.6f];
//    
//    // add this new sub-view to main-view
//    [self.view addSubview:newView];
    
    UIView * view0 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [view0 setBackgroundColor:[UIColor redColor]];
    
    UIView * view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 150, 150)];
    [view1 setBackgroundColor:[UIColor greenColor]];
    
    UIView * view2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [view2 setBackgroundColor:[UIColor blueColor]];
    
    UIView * view3 = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 250, 250)];
    [view3 setBackgroundColor:[UIColor yellowColor]];
    
    // add sub-view
    [self.view addSubview:view0];
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    
    // control the layer-ship
    //[self.view bringSubviewToFront:view1];
    
    //[self.view sendSubviewToBack:view2];
    
    //[self.view exchangeSubviewAtIndex:2 withSubviewAtIndex:3];
    
    UIView * view4 = [[UIView alloc] initWithFrame:CGRectMake(25, 150, 200, 200)];
    [view4 setBackgroundColor:[UIColor purpleColor]];
    [self.view insertSubview:view4 aboveSubview:view1];
    
    [view2 removeFromSuperview];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
