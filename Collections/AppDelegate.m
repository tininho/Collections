//
//  AppDelegate.m
//  Collections
//
//  Created by Florentino Romero Haro on 06/12/13.
//  Copyright (c) 2013 Florentino Romero Haro. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /* Working with array objects */
    NSString *string1 = @"String 1";
    NSString *string2 = @"String 2";
    NSString *string3 = @"String 3";
    
    NSArray *immutableArray = @[
                              string1,
                              string2,
                              string3
                              ];
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:immutableArray];
    [mutableArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
    [mutableArray removeObjectAtIndex:1];
    [mutableArray setObject:string1 atIndexedSubscript:0];
    
    NSLog(@"Immutable array = %@", immutableArray);
    NSLog(@"Mutable array  = %@", mutableArray);
    
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
