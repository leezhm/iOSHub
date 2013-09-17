//
//  KFAViewController.m
//  KeyFrameAnimation1
//
//  Created by Zhengmin.li on 9/14/13.
//  Copyright (c) 2013 Jerry.li. All rights reserved.
//

#import "KFAViewController.h"

#import <QuartzCore/QuartzCore.h>

@interface KFAViewController ()


@property (nonatomic, strong) CAKeyframeAnimation * keyAnimation;

@property (nonatomic, assign) CGRect mainScreenBound;

@property (nonatomic, strong) UIImageView * leafImageView;

@property (nonatomic, assign) float startPoint;
@property (nonatomic, assign) float endPoint;

@end

@implementation KFAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // the bound of main screen
    self.mainScreenBound = [[UIScreen mainScreen] bounds];
    
    // set the background
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    // add the leaf Image view
    self.leafImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Leaf"]];
    self.leafImageView.frame = CGRectMake(0, 0, 320, 79);
    [self.view addSubview:self.leafImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    // show the leaf and animate it
    [self LeafAnimationShow];
}

- (void)LeafAnimationShow
{
    self.keyAnimation = [CAKeyframeAnimation new];
    self.keyAnimation.keyPath = @"position.y";
    self.keyAnimation.duration = 2.0f;
    
    self.startPoint = -20.0f;
    self.endPoint = 40.0f;
    
    self.keyAnimation.values = [self generateValuesFrom:(double)self.startPoint to:(double)self.endPoint];
    
    [self.leafImageView.layer setValue:@(self.endPoint) forKey:@"position.y"];
    [self.leafImageView.layer addAnimation:self.keyAnimation forKey:@"position.y"];
}

double KeyframeAnimationFunctionEaseOutElastic(double t, double b, double c, double d)
{
    double s=1.70158, p=0, a=c;
    if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
    if (a < abs(c)) { a=c; s=p/4; }
    else s = p/(2*M_PI) * asin (c/a);
    return a*pow(2,-10*t) * sin( (t*d-s)*(2*M_PI)/p ) + c + b;
}

- (NSArray *)generateValuesFrom:(double)startValue to:(double)endValue
{
    NSUInteger steps = (NSUInteger)ceil(60 * 2.0f) + 2;
	
	NSMutableArray *valueArray = [NSMutableArray arrayWithCapacity:steps];
    
    const double increment = 1.0 / (double)(steps - 1);
    
    double progress = 0.0,
    v = 0.0,
    value = 0.0;
    
    NSUInteger i;
    for (i = 0; i < steps; i++)
    {
        v = KeyframeAnimationFunctionEaseOutElastic(2.0f * progress * 1000, 0, 1, 2.0f * 1000);
        value = self.startPoint + v * (self.endPoint - self.startPoint);
        
        [valueArray addObject:[NSNumber numberWithDouble:value]];
        
        progress += increment;
    }
    
    return [NSArray arrayWithArray:valueArray];
}

@end
