//
//  BRAppDelegate.h
//  BurnAfterReading
//
//  Created by 孙玲 on 2018/1/20.
//  Copyright © 2018年 qinqin. All rights reserved.
//

@interface BRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

