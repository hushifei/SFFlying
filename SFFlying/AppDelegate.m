//
//  AppDelegate.m
//  SFFlying
//
//  Created by stevenhu on 15/11/22.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import "AppDelegate.h"
#import <SFInstroduce/SFInstroduceVC.h>
#import <LoginAndRegister/SFLoginAndRegister.h>
#import "BaseTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIWindow *window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window.backgroundColor=[UIColor whiteColor];
    
//    NSArray *images=@[[UIImage imageNamed:@"f1"],[UIImage imageNamed:@"f2"],[UIImage imageNamed:@"f3"]];
    NSArray *coverImageNames = @[@"img_index_01txt", @"img_index_02txt", @"img_index_03txt"];
    NSArray *backgroundImageNames = @[@"img_index_01bg", @"img_index_02bg", @"img_index_03bg"];
   UIViewController *viewController=  [SFInstroduceVC createWithWithImages:coverImageNames bgImages:backgroundImageNames button:[UIButton new] enterBlock:^{
         [self enterLoginAndRegister];
     }];
    if (viewController) {
        self.window.rootViewController=viewController;
    } else {
        [self enterLoginAndRegister];
    }
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)enterLoginAndRegister {
    self.window.rootViewController=[SFLoginAndRegister createLoginAndRegisterViewControllerWithType:0 completed:^(NSDictionary * _Nullable dict) {
//        if (dict!=nil) {
        BaseTabBarController *rootVC = [[BaseTabBarController alloc] init];
        [self.window setRootViewController:rootVC];
        [self.window addSubview:rootVC.view];
            NSLog(@"ok");
//        }
    }];
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
