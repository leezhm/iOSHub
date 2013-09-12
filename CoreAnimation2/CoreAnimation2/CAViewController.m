//
//  CAViewController.m
//  CoreAnimation2
//
//  Created by Hsee.com on 9/12/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "CAViewController.h"

@interface CAViewController ()

@property (nonatomic, weak) NSString * device;

@end

@implementation CAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Get the device version
    CGRect bounds = [[UIScreen mainScreen] bounds];
    if(CGSizeEqualToSize(bounds.size, CGSizeMake(320.0, 568.0f)))
    {
        NSLog(@"iOS5 ...");
        self.device = @"iOS5";
    }
    else if(CGSizeEqualToSize(bounds.size, CGSizeMake(320.0, 480.0)))
    {
        NSLog(@"iOS4 ...");
        self.device = @"iOS4";
    }
    
    // load a image as background
    NSString * file = [NSString stringWithFormat:@"Images/%@", self.device];
    NSLog(@"file path -> %@", file);
    UIColor * backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:file]];
    self.view.backgroundColor = backgroundColor;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
