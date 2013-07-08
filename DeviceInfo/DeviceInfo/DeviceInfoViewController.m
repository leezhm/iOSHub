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
    self.devTitle.text = @"Created by Jerry.li on 8th July, 2013 \n";
    
    // ID
    self.devID.text = [[UIDevice currentDevice] uniqueIdentifier];
    
    // Nick Name
    self.devNickName.text = [[UIDevice currentDevice] name];
    
    // system name
    self.devSystemName.text = [[UIDevice currentDevice] systemName];
    
    // system version
    self.devSystemVersion.text = [[UIDevice currentDevice] systemVersion];
    
    // system model
    self.devSystemModel.text = [[UIDevice currentDevice] model];
    
    // international
    self.devInternational.text = [[UIDevice currentDevice] localizedModel];
}

@end
