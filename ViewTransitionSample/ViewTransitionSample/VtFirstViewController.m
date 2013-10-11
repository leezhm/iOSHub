//
//  VtFirstViewController.m
//  ViewTransitionSample
//
//  Created by Hsee.com on 9/26/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "VtFirstViewController.h"
#import "VtViewController.h"

@interface VtFirstViewController ()

@end

@implementation VtFirstViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Next:(id)sender
{
    VtViewController * parentViewController = (VtViewController *)self.parentViewController;
    
    [parentViewController switchToViewController:(UIViewController *)parentViewController.secondViewController];
}

@end
