//
//  MvsYellowViewController.m
//  MultiViewerSample
//
//  Created by Hsee.com on 9/17/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "MvsYellowViewController.h"

@interface MvsYellowViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnPressMe;

@end

@implementation MvsYellowViewController

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
    [self.view setBackgroundColor:[UIColor yellowColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)yellowButtonPress
{
    NSLog(@"Yellow Button (%f, %f, %f, %f)", self.btnPressMe.frame.origin.x, self.btnPressMe.frame.origin.y,
          self.btnPressMe.frame.size.width, self.btnPressMe.frame.size.height);
    
    NSLog(@"Yellow View (%f, %f, %f, %f)", self.view.frame.origin.x, self.view.frame.origin.y,
          self.view.frame.size.width, self.view.frame.size.height);
    
    NSLog(@"Supper View (%f, %f, %f, %f)", self.view.superview.frame.origin.x, self.view.superview.frame.origin.y,
          self.view.superview.frame.size.width, self.view.superview.frame.size.height);
}

@end
