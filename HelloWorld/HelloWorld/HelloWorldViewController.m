//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Zhengmin.li on 7/4/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    
    // save the textfield content
    self.userName = self.textField.text;
    
    //
    NSString * nameString = self.userName;
    if(0 == [nameString length]){
        nameString = @"Zhengmin.li";
    }
    
    NSString * greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    
    self.label.text = greeting;
}
@end
