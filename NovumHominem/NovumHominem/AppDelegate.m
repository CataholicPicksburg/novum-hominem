//
//  AppDelegate.m
//  NovumHominem
//
//  Created by Zacharias George on 6/15/15.
//  Copyright (c) 2015 CataholicPicksburg. All rights reserved.
//

#import "AppDelegate.h"

// TPO headers
#import "TPODataManager.h"

// Third Party headers
// Parse
#import <Parse/Parse.h>
#import <ParseCrashReporting/ParseCrashReporting.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Set up Parse
//    [ParseCrashReporting enable];
    [Parse setApplicationId:@"dUjMT1RSxP3He2H6UY18BFM6c0Lsur7Q5XWBy2cN"
                  clientKey:@"T2TPuucRrTXlj5EDYERXwOzMaLr7u0md4KYqM97f"];
        
    // Set the app's status bar to the default light color instead of default black
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    [[TPODataManager sharedManager] downloadReadingsOfTheDay];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
