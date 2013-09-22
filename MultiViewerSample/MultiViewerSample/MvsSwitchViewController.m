//
//  MvsViewController.m
//  MultiViewerSample
//
//  Created by Hsee.com on 9/17/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "MvsSwitchViewController.h"

#import "MvsBlueViewController.h"
#import "MvsYellowViewController.h"

@interface MvsSwitchViewController ()

@end

@implementation MvsSwitchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // set background
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    self.blueViewController = [[MvsBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
    
//    self.yellowViewController = [[MvsYellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
//    [self.view insertSubview:self.yellowViewController.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    // Release any cached data, images, etc, that aren't use
    if (nil == self.blueViewController.view.superview) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
}


- (IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    if (nil == self.yellowViewController.view.superview) {
        if (nil == self.yellowViewController) {
            self.yellowViewController = [[MvsYellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
        }
        
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        
        [self.blueViewController.view removeFromSuperview];
        
        CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 44);
        self.yellowViewController.view.frame = frame;
        
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
    } else {
        if(nil == self.blueViewController) {
            self.blueViewController = [[MvsBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
        }
        
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
        
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
    
    [UIView commitAnimations];
}

@end
