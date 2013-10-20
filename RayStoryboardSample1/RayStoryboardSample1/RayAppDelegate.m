//
//  RayAppDelegate.m
//  RayStoryboardSample1
//
//  Created by Hsee.com on 10/14/13.
//  Copyright (c) 2013 code4fun.cn. All rights reserved.
//

#import "RayAppDelegate.h"

#import "RayPlayer.h"
#import "RayPlayersViewController.h"

@implementation RayAppDelegate {
    
    NSMutableArray * players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    // init data
    players = [NSMutableArray arrayWithCapacity:20];
    
    RayPlayer * player = [RayPlayer new];
    player.name = @"Hsee Shanghai";
    player.game = @"Clash of Clan";
    player.rating = 4;
    [players addObject:player];
    
    player = [RayPlayer new];
    player.name = @"Jerry li";
    player.game = @"Spin the Bottle";
    player.rating = 10;
    [players addObject:player];
    
    player = [RayPlayer new];
    player.name = @"Dave Brubeck";
    player.game = @"Tic-Tac-Toe";
    player.rating = 8;
    [players addObject:player];
    
    ///
    ///
    ///
    UITabBarController * tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController * navigationController = [[tabBarController viewControllers] objectAtIndex:0];
    RayPlayersViewController * playerViewController = [[navigationController viewControllers] objectAtIndex:0];
    
    playerViewController.players = players;
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
