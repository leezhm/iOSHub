//
//  CAViewController.m
//  CoreAnimation2
//
//  Created by Hsee.com on 9/12/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "CAViewController.h"

#import "CircleView.h"

@interface CAViewController ()

@property (nonatomic, weak) NSString * device;

@property (nonatomic, strong) CircleView * circleView;

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
    
//    // load a image as background
//    NSString * file = [NSString stringWithFormat:@"Images/%@", self.device];
//    NSLog(@"file path -> %@", file);
//    UIColor * backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:file]];
//    self.view.backgroundColor = backgroundColor;
    
    // other method
    NSString * file = [[NSBundle mainBundle] pathForResource:self.device ofType:@"png" inDirectory:@"Images"];
    NSLog(@"path : %@", file);
    
    UIColor * background = [[UIColor alloc] initWithPatternImage:[UIImage imageWithContentsOfFile:file]];
    self.view.backgroundColor = background;
    
    // add a circle view
    self.circleView = [[CircleView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    self.circleView.center = CGPointMake(bounds.size.width / 2, 20);
    
    // add to current view
    [self.view addSubview:self.circleView];
    
    // Tap Gesture
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureEventHandler)];
    [self.view addGestureRecognizer:tapGesture];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapGestureEventHandler
{
    NSLog(@"Tap the view ... drop the circle view ... ahahahah ... ");
    
    [UIView animateWithDuration:1.0f animations:^{
        self.circleView.center = CGPointMake(160, 300);
    }];
}

@end
