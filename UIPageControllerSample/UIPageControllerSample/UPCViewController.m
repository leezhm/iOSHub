//
//  UPCViewController.m
//  UIPageControllerSample
//
//  Created by Hsee.com on 10/21/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "UPCViewController.h"

@interface UPCViewController ()

@end

@implementation UPCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIViewController * viewController = [self.childViewControllers objectAtIndex:self.pageController.currentPage];
    
    if (nil != viewController.view.superview) {
        [viewController viewDidAppear:animated];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    UIViewController * viewController = [self.childViewControllers objectAtIndex:self.pageController.currentPage];
    
    if (nil != viewController.view.superview) {
        [viewController viewWillDisappear:animated];
    }
    
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    UIViewController * viewController = [self.childViewControllers objectAtIndex:self.pageController.currentPage];
    
    if (nil != viewController.view.superview) {
        [viewController viewWillDisappear:animated];
    }
    
    [super viewDidDisappear:animated];
}

@end
