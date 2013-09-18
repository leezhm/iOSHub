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
    //[self.view insertSubview:self.blueViewController.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchViews:(id)sender
{
    
}

@end
