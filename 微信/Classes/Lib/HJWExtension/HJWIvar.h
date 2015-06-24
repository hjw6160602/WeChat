//
//  HJWIvar.h
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//
//  包装一个成员变量

#import "HJWMember.h"
@class HJWType;

/**
 *  包装一个成员变量
 */
@interface HJWIvar : HJWMember
/** 成员变量 */
@property (nonatomic, assign) Ivar ivar;
/** 成员属性名 */
@property (nonatomic, copy, readonly) NSString *propertyName;
/** 成员变量的值 */
@property (nonatomic) id value;
/** 成员变量的类型 */
@property (nonatomic, strong, readonly) HJWType *type;

/**
 *  初始化
 *
 *  @param ivar      成员变量
 *  @param srcObject 哪个对象的成员变量
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithIvar:(Ivar)ivar srcObject:(id)srcObject;
@end

/**
 *  遍历成员变量用的block
 *
 *  @param ivar 成员变量的包装对象
 *  @param stop       YES代表停止遍历，NO代表继续遍历
 */
typedef void (^HJWIvarsBlock)(HJWIvar *ivar, BOOL *stop);