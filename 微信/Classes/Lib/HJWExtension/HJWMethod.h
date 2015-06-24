//
//  HJWMethod.h
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//
//  包装一个方法

#import "HJWMember.h"
/**
 *  包装一个方法
 */
@interface HJWMethod : HJWMember
/** 方法 */
@property (nonatomic, assign) Method method;
/** 方法名 */
@property (nonatomic, assign, readonly) SEL selector;
/** 所有的参数（都是HJWArgument对象） */
@property (nonatomic, strong, readonly) NSArray *arguments;
/** 返回值类型 */
@property (nonatomic, copy, readonly) NSString *returnType;
/**
 *  初始化
 *
 *  @param method    方法
 *  @param srcObject 哪个对象的方法
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithMethod:(Method)method srcObject:(id)srcObject;
@end

/**
 *  遍历方法用的block
 *
 *  @param method 方法的包装对象
 *  @param stop       YES代表停止遍历，NO代表继续遍历
 */
typedef void (^HJWMethodsBlock)(HJWMethod *method, BOOL *stop);