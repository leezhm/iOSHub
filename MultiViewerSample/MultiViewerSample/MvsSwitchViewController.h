//
//  MvsViewController.h
//  MultiViewerSample
//
//  Created by Hsee.com on 9/17/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MvsBlueViewController;
@class MvsYellowViewController;


@interface MvsSwitchViewController : UIViewController

@property (nonatomic, strong) MvsBlueViewController * blueViewController;
@property (nonatomic, strong) MvsYellowViewController * yellowViewController;

- (IBAction)switchViews:(id)sender;

@end
