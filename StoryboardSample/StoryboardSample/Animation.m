//
//  Animation.m
//  StoryboardSample
//
//  Created by Zhengmin.li on 9/6/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "Animation.h"

@implementation Animation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Animation");
    NSLog(@"Source Controller = %@", [segue sourceViewController]);
    NSLog(@"Destination Controller = %@", [segue destinationViewController]);
    NSLog(@"Segue Identifier = %@", [segue identifier]);
}


@end
