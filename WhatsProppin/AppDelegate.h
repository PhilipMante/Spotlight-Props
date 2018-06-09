//
//  AppDelegate.h
//  WhatsProppin
//
//  Created by Philip Mante on 12/13/17.
//  Copyright © 2017 Philip Mante. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

