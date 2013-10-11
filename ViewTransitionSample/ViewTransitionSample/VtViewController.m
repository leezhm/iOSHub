//
//  VtViewController.m
//  ViewTransitionSample
//
//  Created by Hsee.com on 9/26/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "VtViewController.h"

@interface VtViewController ()

@property (nonatomic, strong) UIViewController * currentViewController;

@property (strong, nonatomic) IBOutlet UINavigationBar *rootNavigation;

@end

@implementation VtViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    // add the first view
    self.firstViewController = [[VtFirstViewController alloc] initWithNibName:@"VtFirstViewController" bundle:nil];
    [self addChildViewController:self.firstViewController];
    
    self.secondViewController = [[VtSecondViewController alloc] initWithNibName:@"VtSecondViewController" bundle:nil];
    [self addChildViewController:self.secondViewController];
    
    [self.view insertSubview:self.firstViewController.view atIndex:0];
    self.currentViewController = self.firstViewController;
    
    //self.rootNavigation.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)switchToViewController:(UIViewController *)nextViewController
{
    [self transitionFromViewController:self.currentViewController
                      toViewController:nextViewController
                              duration:1
                               options:UIViewAnimationOptionTransitionFlipFromLeft
                            animations:^{
                                
                            }completion:^(BOOL finished){
                                if (finished) {
                                    self.currentViewController = nextViewController;
                                    
                                    NSLog(@"Current View Controller -> %@", self.currentViewController.nibName);
                                }
                            }];
}

@end
