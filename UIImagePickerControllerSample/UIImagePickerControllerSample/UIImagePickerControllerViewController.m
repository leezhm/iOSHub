//
//  UIImagePickerControllerViewController.m
//  UIImagePickerControllerSample
//
//  Created by Hsee.com on 8/28/13.
//  Copyright (c) 2013 Code4fun.cn. All rights reserved.
//

#import "UIImagePickerControllerViewController.h"

@interface UIImagePickerControllerViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation UIImagePickerControllerViewController

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

- (IBAction)onTakeAPhotoTouchUpInsideEvent:(UIButton *)sender
{
    UIImagePickerController * ipc = [[UIImagePickerController alloc] init];
    
    // delegate
    ipc.delegate = self;
    
    // Can Editing
    [ipc setAllowsEditing:YES];
    
    // set the source
    [ipc setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:ipc animated:YES completion:nil];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // dismiss the taking-a-photo view
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    // get the picture
    UIImage * img = info[UIImagePickerControllerEditedImage];
    
    NSLog(@"image type : %@", info[UIImagePickerControllerMediaType]);
    NSLog(@"image URL : %@", info[UIImagePickerControllerMediaURL]);
    NSLog(@"image ref URL : %@", info[UIImagePickerControllerReferenceURL]);
    
    [self.imageView setImage:img];
}

@end
