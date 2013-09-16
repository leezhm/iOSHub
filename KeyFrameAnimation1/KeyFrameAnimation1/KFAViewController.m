//
//  KFAViewController.m
//  KeyFrameAnimation1
//
//  Created by Zhengmin.li on 9/14/13.
//  Copyright (c) 2013 Jerry.li. All rights reserved.
//

#import "KFAViewController.h"

#import <QuartzCore/QuartzCore.h>

@interface KFAViewController ()


@property (nonatomic, strong) CAKeyframeAnimation * keyAnimation;

@property (nonatomic, assign) CGRect mainScreenBound;


@end

@implementation KFAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // the bound of main screen
    self.mainScreenBound = [[UIScreen mainScreen] bounds];
    
    // set the background
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
