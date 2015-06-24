//
//  AppDelegate.m
//  微信
//
//  Created by shoule on 15/6/23.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "AppDelegate.h"
#import "UserInfo.h"
#import "XMPPTool.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 从沙里加载用户的数据到单例
    [[UserInfo sharedUserInfo] loadUserInfoFromSanbox];
    
    // 判断用户的登录状态，YES 直接来到主界面
    //if([UserInfo sharedUserInfo].loginStatus){
        UIStoryboard *storayobard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        self.window.rootViewController = storayobard.instantiateInitialViewController;
        
        // 自动登录服务
        [[XMPPTool sharedXMPPTool] xmppUserLogin:nil];
    //}
    return YES;
}


@end
