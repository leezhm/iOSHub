//
//  CAViewController.m
//  CoreAnimationSample1
//
//  Created by Hsee.com on 9/10/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "CAViewController.h"

@interface CAViewController ()

@end

@implementation CAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set the background
    [self.view setBackgroundColor:[UIColor purpleColor]];
    
    // add a button
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    

    [btn setTitle:@"弹入弹出" forState:UIControlStateNormal];   
    btn.frame = CGRectMake(20, 20, 80, 30); // set size of button
    
    // set the touchupinside event and event handle function    
    [btn addTarget:self action:@selector(btnMoveInAndOutForUIView) forControlEvents:UIControlEventTouchUpInside];
    
    // add/show the button to current view
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnMoveInAndOutForUIView
{
    // Move out
    
}

@end
