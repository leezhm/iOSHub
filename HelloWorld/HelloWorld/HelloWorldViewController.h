//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Zhengmin.li on 7/4/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>

@property (copy, nonatomic) NSString *userName;

@property (weak, nonatomic) IBOutlet UILabel *labelText;

@end
