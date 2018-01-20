//
//  BRAppDelegate.m
//  BurnAfterReading
//
//  Created by 孙玲 on 2018/1/20.
//  Copyright © 2018年 qinqin. All rights reserved.
//

#import "BRAppDelegate.h"
#import "BRFlowViewController.h"
#import "BRPersonalCenterViewController.h"

@interface BRAppDelegate ()

@end

@implementation BRAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UITabBarController *tabController = [[UITabBarController alloc] init];
    BRFlowViewController *brFlowViewController = [[BRFlowViewController alloc] init];
    brFlowViewController.tabBarItem.title = @"见之";
    brFlowViewController.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    brFlowViewController.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_home_h"];
    BRPersonalCenterViewController *brPersonalCenterViewController = [[BRPersonalCenterViewController alloc] init];
    brPersonalCenterViewController.tabBarItem.title = @"我";
    brPersonalCenterViewController.tabBarItem.image = [UIImage imageNamed:@"tabbar_me"];
    brPersonalCenterViewController.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_me_h"];
    tabController.viewControllers = @[brFlowViewController,brPersonalCenterViewController];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}


- (void)applicationWillTerminate:(UIApplication *)application {
    [self saveContext];
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"BurnAfterReading"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end
