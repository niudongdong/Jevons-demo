//
//  AppConfigManager.m
//  Demo
//
//  Created by 牛冬冬 on 2018/1/4.
//  Copyright © 2018年 JevonsNiu. All rights reserved.
//

#import "AppConfigManager.h"
#import "TabBarController.h"
#import "NavigationController.h"
#import "AppDelegate.h"

@implementation AppConfigManager

/** 创建设置rootviewcontroller */
+ (void)setUpRootViewController
{
    TabBarController *tabVC = [[TabBarController alloc] init];
    
    [tabVC addChildViewController:@"HomePageViewController" title:@"首页" selectTitleColor:ColorFromRGB(0x20c0b4) imageName:@"tabbar_insurance" selectImageNam:@"tabbar_insurance_sel"];
    
    [tabVC addChildViewController:@"ShopViewController" title:@"商城" selectTitleColor:ColorFromRGB(0xffaa00) imageName:@"tabbar_baozhang" selectImageNam:@"tabbar_baozhang_sel"];
    
    [tabVC addChildViewController:@"MineViewController" title:@"我" selectTitleColor:ColorFromRGB(0xf9639d) imageName:@"tabbar_mine" selectImageNam:@"tabbar_mine_sel"];
  
    NavigationController *nav = [[NavigationController alloc] initWithRootViewController:tabVC];
    [nav setNavigationBarHidden:YES animated:YES];
    APP_WINDOW.rootViewController = nav;
}

@end
