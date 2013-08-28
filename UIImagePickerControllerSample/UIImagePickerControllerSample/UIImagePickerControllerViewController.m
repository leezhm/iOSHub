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
    
    // delegate
    self.imgPicker.delegate = self;
    
    // Can Editing
    [self.imgPicker setAllowsEditing:YES];
    
    // set the source
    [self.imgPicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    
    // show the custom UI with CameraOverlayView
    [self.imgPicker setShowsCameraControls:NO];
    
    // custom camera controller
    UIView * cameraController = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIButton * takingPhoto = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [takingPhoto setTitle:@"Take a photo" forState:UIControlStateNormal];
    
    // set the action function
    [takingPhoto addTarget:self action:@selector(onTakingAPhotoEvent) forControlEvents:UIControlEventTouchUpInside];
    
    // add button to cameraController
    [takingPhoto setFrame:CGRectMake(0, 0, 120, 60)];
    [cameraController addSubview:takingPhoto];
    
    // set cameraController with camera overlay view
    [self.imgPicker setCameraOverlayView:cameraController];
    
    // turn on the flash
    [self.imgPicker setCameraFlashMode:UIImagePickerControllerCameraFlashModeOn];
    
    [self presentViewController:self.imgPicker animated:YES completion:nil];
}

- (void) onTakingAPhotoEvent
{
    // taking a photo
    [self.imgPicker takePicture];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // dismiss the taking-a-photo view
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    // get the picture
    UIImage * img = info[UIImagePickerControllerOriginalImage]; // Be careful, EditingImage or OriginalImage
    
    NSLog(@"image type : %@", info[UIImagePickerControllerMediaType]);
    NSLog(@"image URL : %@", info[UIImagePickerControllerMediaURL]);
    NSLog(@"image ref URL : %@", info[UIImagePickerControllerReferenceURL]);
    
    [self.imgView setImage:img];
}

@end
