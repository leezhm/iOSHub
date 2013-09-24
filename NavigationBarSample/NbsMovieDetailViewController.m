//
//  NbsMovieDetailViewController.m
//  NavigationBarSample
//
//  Created by Hsee.com on 9/23/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "NbsMovieDetailViewController.h"

@interface NbsMovieDetailViewController ()

@end

@implementation NbsMovieDetailViewController

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

- (void)viewWillAppear:(BOOL)animated
{
    self.movieDetailLabel.text = self.message;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
