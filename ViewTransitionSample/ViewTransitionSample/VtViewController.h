//
//  VtViewController.h
//  ViewTransitionSample
//
//  Created by Hsee.com on 9/26/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VtFirstViewController.h"
#import "VtSecondViewController.h"

@interface VtViewController : UIViewController

@property (nonatomic, strong) VtFirstViewController * firstViewController;
@property (nonatomic, strong) VtSecondViewController * secondViewController;

- (void)switchToViewController:(UIViewController *)nextViewController;

@end
