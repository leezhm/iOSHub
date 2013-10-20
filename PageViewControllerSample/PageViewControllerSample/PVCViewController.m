//
//  PVCViewController.m
//  PageViewControllerSample
//
//  Created by Hsee.com on 10/18/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "PVCViewController.h"

#import "PVCPageViewController.h"

@interface PVCViewController () <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController * pageViewController;

@end

@implementation PVCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // init the page view controller
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageViewController.dataSource = self;
    [self.pageViewController.view setFrame:CGRectMake(0, 20, 320, 524)];
    
    PVCPageViewController * initViewController = [self viewControllerAtIndex:0];
    
    NSArray * viewControllers = [NSArray arrayWithObject:initViewController];
    
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageViewController];
    [self.view addSubview:self.pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
    [self.navigationController setNeedsStatusBarAppearanceUpdate];
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Page View Controller

- (PVCPageViewController *)viewControllerAtIndex:(NSUInteger)index
{
    PVCPageViewController *childViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    childViewController.index = index;
    
    return childViewController;
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [(PVCPageViewController *)viewController index];
    
    if (0 == index) {
        return nil;
    }
    
    index --;
    
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
       viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [(PVCPageViewController *)viewController index];
    
    index ++;
    
    if (5 == index) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
    return 5;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}

@end
