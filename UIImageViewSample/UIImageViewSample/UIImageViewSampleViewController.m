//
//  UIImageViewSampleViewController.m
//  UIImageViewSample
//
//  Created by Zhengmin.li on 8/27/13.
//  Copyright (c) 2013 Zhengmin.li. All rights reserved.
//

#import "UIImageViewSampleViewController.h"

#import <AudioToolbox/AudioToolbox.h>

#import <AVFoundation/AVFoundation.h>

@interface UIImageViewSampleViewController ()

//@property (nonatomic, strong) SystemSoundID * soundID;

@property (nonatomic, strong) AVAudioPlayer * musicPlayer;

@end

@implementation UIImageViewSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    // create a UIImageView
//    UIImage * img = [UIImage imageNamed:@"Resource/magic"];
//
//    NSLog(@"image width:%f and height:%f", [img size].width, [img size].height);
//    NSLog(@"Main View Center x:%f and y:%f", [self.view center].x, [self.view center].y);
//    NSLog(@"Main View width:%f and height:%f", [self.view bounds].size.width, [self.view bounds].size.height);
//
//    UIImageView * imgView = [[UIImageView alloc] initWithImage:img];
//    [imgView setFrame:CGRectMake(0, 0, [self.view bounds].size.width, [self.view bounds].size.height)];
//    [imgView setBackgroundColor:[UIColor redColor]];
//
//    // add sub-view
//    [self.view addSubview:imgView];
    
    
    // UIImage Animation
    UIImageView * AnimationView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [self.view bounds].size.width, [self.view bounds].size.height)];
    
    NSMutableArray * muArray = [[NSMutableArray alloc] initWithCapacity:125];
    
    for (int i = 1; i <= 125; ++ i) {
        
        NSString * file = [NSString stringWithFormat:@"Resource/QiongFlower/%i", i];
        
        //NSLog(@"%@", file);
        
        [muArray addObject:[UIImage imageNamed:file]];
    }
    
    [AnimationView setAnimationImages:muArray];
    [AnimationView setAnimationDuration:4.0];
    
    [self.view addSubview:AnimationView];
    
    [AnimationView startAnimating];
    
    // Play Musics
    //NSString * file = [[NSBundle mainBundle] pathForResource:@"QiongFlowers" ofType:@"mp3" inDirectory:@"Resource/Musics/"];
//    
//    static SystemSoundID soundID = 0;
    NSString * path = [[NSBundle mainBundle] pathForResource:@"QiongFlowers" ofType:@"mp3" inDirectory:@"Resource/Musics/"];
    NSURL * file = [NSURL fileURLWithPath:path];
    self.musicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:nil];
    
    self.musicPlayer.numberOfLoops = -1;
    [self.musicPlayer play];
    
    
//    if(file)
//    {
//        // register sound
//        AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:file], &soundID);
//    }
//    
//    AudioServicesPlaySystemSound(soundID);
    
    
//    UIImageView *hpView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Resource/homePage"]];
//    
//    //NSLog(@"width:%f and height:%f", )
//    
//    [hpView setFrame:CGRectMake(0, 0, [self.view bounds].size.width, [self.view bounds].size.height)];
//    
//    [self.view addSubview:hpView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
