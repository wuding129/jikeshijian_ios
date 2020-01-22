//
//  AppDelegate.m
//  SampleApp
//
//  Created by hsb on 2020/1/19.
//  Copyright © 2020 wuding. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "GTVideoViewController.h"
// 自定义实现delegate需要在此处声明
@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    ViewController *viewController = [[ViewController alloc] init];
    
//    UIViewController *controller1 = [[UIViewController alloc] init];

    
    viewController.view.backgroundColor = [UIColor redColor];
    viewController.tabBarItem.title = @"新闻";
    viewController.tabBarItem.image = [UIImage imageNamed: @"home_icon"];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"home_icon_active"];
    
    GTVideoViewController *videoController = [[GTVideoViewController alloc] init];
    
//    UIViewController *controller3 = [[UIViewController alloc] init];
//    controller3.view.backgroundColor = [UIColor greenColor];
//    controller3.tabBarItem.title = @"缓存";
    
    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor lightGrayColor];
    controller3.tabBarItem.title = @"我的";
    controller3.tabBarItem.image = [UIImage imageNamed: @"profile_icon"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"profile_icon_active"];
    
    [tabbarController setViewControllers:@[viewController, videoController, controller3]];

    // 自定义delegate在当前这个类中执行
    tabbarController.delegate = self;
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
    [self.window makeKeyAndVisible];
    self.window.rootViewController = navigationController;

    
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"did select");
}

#pragma mark - 生命周期
- (void)applicationWillEnterForeground:(UIApplication *)application{
    NSLog(@"状态** 将要进入前台");
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    NSLog(@"状态** 已经活跃");
}
- (void)applicationWillResignActive:(UIApplication *)application{
    NSLog(@"状态** 将要进入后台");
}
- (void)applicationDidEnterBackground:(UIApplication *)application{
    NSLog(@"状态** 已经进入后台");
}
- (void)applicationWillTerminate:(UIApplication *)application{
    NSLog(@"状态** 将要退出程序");
}

@end
