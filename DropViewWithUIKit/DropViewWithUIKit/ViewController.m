//
//  ViewController.m
//  DropViewWithUIKit
//
//  Created by Hsee.com on 10/22/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "ViewController.h"

#import "DropView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addDropView:(id)sender
{
    // create and add DropView to current view
    DropView * dView = [[DropView alloc] init];
    //[self.view addSubview:dView];
    [dView showView];
}

@end
