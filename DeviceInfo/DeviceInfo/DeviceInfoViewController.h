//
//  DeviceInfoViewController.h
//  DeviceInfo
//
//  Created by Zhengmin.li on 7/8/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceInfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *devInternational;
@property (weak, nonatomic) IBOutlet UILabel *devSystemModel;
@property (weak, nonatomic) IBOutlet UILabel *devSystemVersion;
@property (weak, nonatomic) IBOutlet UILabel *devSystemName;
@property (weak, nonatomic) IBOutlet UILabel *devNickName;
@property (weak, nonatomic) IBOutlet UILabel *devID;

@property (weak, nonatomic) IBOutlet UILabel *devTitle;

//
- (void) enumDeviceInfo;

@end
