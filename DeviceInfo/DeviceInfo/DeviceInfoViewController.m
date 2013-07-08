//
//  DeviceInfoViewController.m
//  DeviceInfo
//
//  Created by Zhengmin.li on 7/8/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import "DeviceInfoViewController.h"

@interface DeviceInfoViewController ()

@end

@implementation DeviceInfoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self enumDeviceInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) enumDeviceInfo
{
    NSString * devInfo = @"Created by Jerry.li on 8th July, 2013 \n";
    
    // Name
    devInfo = [devInfo stringByAppendingString:[[UIDevice currentDevice] systemVersion]];
    
    self.showDevInfo.text = devInfo;
}

@end
