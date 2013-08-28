//
//  UIImagePickerControllerViewController.m
//  UIImagePickerControllerSample
//
//  Created by Hsee.com on 8/28/13.
//  Copyright (c) 2013 Code4fun.cn. All rights reserved.
//

#import "UIImagePickerControllerViewController.h"

@interface UIImagePickerControllerViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (strong, nonatomic) UIImagePickerController * imgPicker;

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
    self.imgPicker = [[UIImagePickerController alloc] init];
    
    //self.imgPicker = ipc;
    
    // delegate
    self.imgPicker.delegate = self;
    
    // Can Editing
    [self.imgPicker setAllowsEditing:YES];
    
    // set the source
    [self.imgPicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    
    // show the custom UI with CameraOverlayView
    [self.imgPicker setShowsCameraControls:NO];
    
    
    [self presentViewController:self.imgPicker animated:YES completion:nil];
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
    
    [self.imgView setImage:img];
}

@end
