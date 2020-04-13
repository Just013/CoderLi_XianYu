//
//  AppDelegate.m
//  CoderLi_XianYu
//
//  Created by lys013rt on 2020/4/13.
//  Copyright © 2020 CoderLi. All rights reserved.
//

#import "AppDelegate.h"
#import "CoderLiTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        _window.rootViewController = [[CoderLiTabBarController alloc] init];
        [_window makeKeyAndVisible];
                #if DEBUG
    //    [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
                #endif
    return YES;
}


@end
