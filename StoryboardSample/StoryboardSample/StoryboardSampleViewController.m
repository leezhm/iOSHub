//
//  StoryboardSampleViewController.m
//  StoryboardSample
//
//  Created by Hsee.com on 9/3/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "StoryboardSampleViewController.h"

@interface StoryboardSampleViewController ()

@end

@implementation StoryboardSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set the background
    [self.view setBackgroundColor:[UIColor greenColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Source Controller = %@", [segue sourceViewController]);
    NSLog(@"Destination Controller = %@", [segue destinationViewController]);
    NSLog(@"Segue Identifier = %@", [segue identifier]);
}

@end
