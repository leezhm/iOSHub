//
//  MvsAppDelegate.h
//  MultiViewerSample
//
//  Created by Hsee.com on 9/17/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MvsSwitchViewController;

@interface MvsAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// declare the root view controller
@property (strong, nonatomic) MvsSwitchViewController * switchViewController;

@end
