//
//  NavigationController.m
//  微信
//
//  Created by shoule on 15/6/24.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "NavigationController.h"
#import "HJWExtension.h"

@implementation NavigationController

+ (void)initialize{
    // 设置导航样式
    UINavigationBar *NaviBar = [UINavigationBar appearance];
    // 1.设置导航条的背景
    // 高度不会拉伸，但是宽度会拉伸
    [NaviBar setBackgroundImage:[UIImage imageNamed:@"topbarbg_ios7"] forBarMetrics:UIBarMetricsDefault];
    // 2.设置栏的字体
    NSMutableDictionary *att = [NSMutableDictionary dictionary];
    att[NSForegroundColorAttributeName] = [UIColor whiteColor];
    att[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [NaviBar setTitleTextAttributes:att];
    // 设置状态栏的样式
    // xcode5以上，创建的项目，默认的话，这个状态栏的样式由控制器决定
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

-(void)viewDidLoad{
    _WeChatItem.selectedImage = [[UIImage imageNamed:@"tabbar_mainframeHL"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _AddressBookItem.selectedImage =  [[UIImage imageNamed:@"tabbar_contactsHL"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _DiscoverItem.selectedImage = [[UIImage imageNamed:@"tabbar_discoverHL"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    _MeItem.selectedImage = [[UIImage imageNamed:@"tabbar_meHL"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = HJWColor(125, 125, 125);
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = HJWColor(10, 163, 0);
    selectTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    
    [self.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [self.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
}

@end
