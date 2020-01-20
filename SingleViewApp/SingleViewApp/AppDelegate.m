//
//  AppDelegate.m
//  SingleViewApp
//
//  Created by hsb on 2020/1/20.
//  Copyright © 2020 wuding. All rights reserved.
//

// UIWindow
// 1、特殊形式的UIView，提供APP中展示内容的基础窗口
// 2、只作为容器，和ViewController一起协同工作
// 3、通常屏幕上只存在、展示一个UIWindow

// 通常使用storyboard会自动创建
// 手动创建步骤
    // 1、创建UIWindow
    // 2、设置rootViewController
    // 3、makeKeyAndVisible



#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 初始化自己的UIWindow，并设置UIWindow成屏幕大小
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    return YES;
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
