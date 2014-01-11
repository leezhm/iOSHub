//
//  PVCPageViewController.m
//  PageViewControllerSample
//
//  Created by Hsee.com on 10/18/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "PVCPageViewController.h"

#import "PVCPageViewController.h"

@interface PVCPageViewController ()

@property (strong, nonatomic) IBOutlet UILabel *screenNumber;

@end

@implementation PVCPageViewController

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
    
    [self.view setBackgroundColor:[UIColor yellowColor]];
    //[self.view setFrame:CGRectMake(100, 100, 320, 320)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.screenNumber.text = [NSString stringWithFormat:@"Screen #%d", self.index];
}

@end
