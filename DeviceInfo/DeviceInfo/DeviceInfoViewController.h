//
//  DeviceInfoViewController.h
//  DeviceInfo
//
//  Created by Zhengmin.li on 7/8/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceInfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *showDevInfo;

//
- (void) enumDeviceInfo;

@end
