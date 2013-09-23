//
//  TbsRootViewController.m
//  ToolBarSample
//
//  Created by Hsee.com on 9/23/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "TbsRootViewController.h"

#import "TbsFirstViewController.h"
#import "TbsSecondViewController.h"

@interface TbsRootViewController ()

@property (nonatomic, strong) TbsFirstViewController * firstViewController;
@property (nonatomic, strong) TbsSecondViewController * secondViewController;

@end

@implementation TbsRootViewController

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
    
    // add the first view
    self.firstViewController = [[TbsFirstViewController alloc] initWithNibName:@"FirstView" bundle:nil];
    
    // add to the subview
    [self.view insertSubview:self.firstViewController.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    if(nil == self.firstViewController.view.superview)
    {
        self.firstViewController = nil;
    }
    else
    {
        self.secondViewController = nil;
    }
}

- (IBAction)swithView:(id)sender
{
    [UIView beginAnimations:@"Switch View" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:2.0f];
    
    if(nil == self.firstViewController.view.superview)
    {
        if(nil == self.firstViewController)
        {
            self.firstViewController = [[TbsFirstViewController alloc] initWithNibName:@"FirstView" bundle:nil];
        }
        
        // animation transition
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        
        // remove the second
        [self.secondViewController.view removeFromSuperview];
        
        // add the first
        [self.view insertSubview:self.firstViewController.view atIndex:0];
    }
    else if(nil == self.secondViewController.view.superview)
    {
        if(nil == self.secondViewController)
        {
            self.secondViewController = [[TbsSecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
        }
        
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        
        // remove the first
        [self.firstViewController.view removeFromSuperview];
        
        // add the second
        [self.view insertSubview:self.secondViewController.view atIndex:0];
    }
    
    [UIView commitAnimations];
}

@end
