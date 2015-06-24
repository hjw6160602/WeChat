//
//  XMPPTool.h
//  微信
//
//  Created by shoule on 15/6/24.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMPPFramework.h"
#import "UserInfo.h"
#import "Single.h"


typedef enum {
    XMPPResultTypeLoginSuccess,     //登录成功
    XMPPResultTypeLoginFailure,     //登录失败
    XMPPResultTypeNetErr,           //网络不给力
    XMPPResultTypeRegisterSuccess,  //注册成功
    XMPPResultTypeRegisterFailure   //注册失败
}XMPPResultType;

typedef void (^XMPPResultBlock)(XMPPResultType type);// XMPP请求结果的block

@interface XMPPTool : NSObject

singleton_interface(XMPPTool);

/**
 *  注册标识 YES 注册 / NO 登录
 */
@property (nonatomic, assign,getter=isRegisterOperation) BOOL  registerOperation;//注册操作
/**
 *  用户注销
 */
-(void)xmppUserlogout;
/**
 *  用户登录
 */
-(void)xmppUserLogin:(XMPPResultBlock)resultBlock;
/**
 *  用户注册
 */
-(void)xmppUserRegister:(XMPPResultBlock)resultBlock;

@end
