//
//  AppDelegate.m
//  SampleApp
//
//  Created by hsb on 2020/1/19.
//  Copyright © 2020 wuding. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    ViewController *viewController = [[ViewController alloc] init];
    
//    UIViewController *controller1 = [[UIViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    navigationController.view.backgroundColor = [UIColor redColor];
    navigationController.tabBarItem.title = @"新闻";
    navigationController.tabBarItem.image = [UIImage imageNamed: @"home_icon"];
    navigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"home_icon_active"];
    
    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    controller2.tabBarItem.title = @"视频";
    controller2.tabBarItem.image = [UIImage imageNamed: @"list_icon"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"list_icon_active"];
    
//    UIViewController *controller3 = [[UIViewController alloc] init];
//    controller3.view.backgroundColor = [UIColor greenColor];
//    controller3.tabBarItem.title = @"缓存";
    
    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor lightGrayColor];
    controller3.tabBarItem.title = @"我的";
    controller3.tabBarItem.image = [UIImage imageNamed: @"profile_icon"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"profile_icon_active"];
    
    [tabbarController setViewControllers:@[navigationController, controller2, controller3]];

    
    [self.window makeKeyAndVisible];
    self.window.rootViewController = tabbarController;

    
    return YES;
}

@end
