//
//  UPAppDelegate.m
//  Routable
//
//  Created by Clay Allsopp on 4/3/13.
//  Copyright (c) 2013 TurboProp Inc. All rights reserved.
//

#import "UPAppDelegate.h"
#import "Routable.h"
#import "MediatorFile.h"

@implementation UPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    UINavigationController *nav = [[UINavigationController alloc] init];
    [[Routable sharedRouter] setNavigationController:nav];
    [self.window setRootViewController:nav];
    
    [self.window makeKeyAndVisible];

    [MediatorFile openUserViewController];
    
    return YES;
}


@end
