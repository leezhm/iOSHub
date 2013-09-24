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

@property (nonatomic, strong) CLLocationManager * locationManger;

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
    
    self.mapView.showsUserLocation = YES;
    self.mapView.scrollEnabled = YES;
    self.mapView.zoomEnabled = YES;
    
    self.mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // add it to supper view
    [self.view addSubview:self.mapView];
    
    // check the location services
    if ([CLLocationManager locationServicesEnabled]) {
        
        // enable
        self.locationManger = [[CLLocationManager alloc] init];
        self.locationManger.delegate = self;
    
        //
        [self.locationManger setDesiredAccuracy:kCLLocationAccuracyBest];
        [self.locationManger startUpdatingLocation];
    }
    else {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"警告"
                                                         message:@"您机器的位置服务当前不可用，请在打开位置服务后，重新尝试！"
                                                        delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    // print the newe location
    //NSLog(@"Location Latitude = %f", locations)
    
    CLLocation * currentLocation = [locations objectAtIndex:[locations count] - 1];
    
    NSLog(@"Location Latitude = %f, Longitude = %f", currentLocation.coordinate.latitude, currentLocation.coordinate.longitude);
    
    // update the location info
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    MKCoordinateRegion region = MKCoordinateRegionMake(currentLocation.coordinate, span);
    
    [self.mapView setRegion:region animated:YES];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    
}

@end
