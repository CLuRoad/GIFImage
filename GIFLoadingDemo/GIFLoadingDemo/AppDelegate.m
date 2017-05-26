//
//  AppDelegate.m
//  GIFLoadingDemo
//
//  Created by RoadClu on 2017/5/25.
//  Copyright © 2017年 worldunion. All rights reserved.
//

#import "AppDelegate.h"
#import "UIImage+GIFImage.h"
#import "SVProgressHUD_Extension.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    [self svPreferrenceConf];
    
    return YES;
}

#pragma mark --- SVProgressHUD 偏好设置
- (void)svPreferrenceConf {
    
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleLight];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD setBackgroundColor:[UIColor whiteColor]];
    [SVProgressHUD setMinimumDismissTimeInterval:CGFLOAT_MAX];
    [SVProgressHUD setInfoImage:[UIImage imageWithGIFNamed:@"loading"]];
    
    
    UIImageView *svImgView = [[SVProgressHUD sharedView] valueForKey:@"imageView"];
    CGRect imgFrame = svImgView.frame;
    
    // 设置图片的显示大小
    imgFrame.size = CGSizeMake(64, 48);
    svImgView.frame = imgFrame;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
