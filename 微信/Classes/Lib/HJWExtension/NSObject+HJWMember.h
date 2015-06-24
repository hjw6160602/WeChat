//
//  NSObject+HJWMember.h
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HJWIvar.h"
#import "HJWMethod.h"

/**
 *  遍历所有类的block（父类）
 */
typedef void (^HJWClassesBlock)(Class c, BOOL *stop);

@interface NSObject (HJWMember)

/**
 *  遍历所有的成员变量
 */
- (void)enumerateIvarsWithBlock:(HJWIvarsBlock)block;

/**
 *  遍历所有的方法
 */
- (void)enumerateMethodsWithBlock:(HJWMethodsBlock)block;

/**
 *  遍历所有的类
 */
- (void)enumerateClassesWithBlock:(HJWClassesBlock)block;
@end
