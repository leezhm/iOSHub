//
//  MvViewController.m
//  MapViewSample
//
//  Created by Hsee.com on 9/24/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "MvViewController.h"

@interface MvViewController ()

@property (nonatomic, strong) MKMapView * mapView;

@end

@implementation MvViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set the background
    self.view.backgroundColor = [UIColor whiteColor];
    
    // add the map view
    self.mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    
    // set map type as satellite/Hybrid/Standard
    self.mapView.mapType = MKMapTypeHybrid;
    
    self.mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // add it to supper view
    [self.view addSubview:self.mapView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Define by myself

@end
