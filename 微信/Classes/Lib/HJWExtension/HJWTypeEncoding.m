//
//  HJWTypeEncoding.m
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//
#import <Foundation/Foundation.h>
/**
 *  成员变量类型（属性类型）
 */
NSString *const HJWTypeInt = @"i";
NSString *const HJWTypeFloat = @"f";
NSString *const HJWTypeDouble = @"d";
NSString *const HJWTypeLong = @"q";
NSString *const HJWTypeLongLong = @"q";
NSString *const HJWTypeChar = @"c";
NSString *const HJWTypeBOOL = @"c";
NSString *const HJWTypePointer = @"*";

NSString *const HJWTypeIvar = @"^{objc_ivar=}";
NSString *const HJWTypeMethod = @"^{objc_method=}";
NSString *const HJWTypeBlock = @"@?";
NSString *const HJWTypeClass = @"#";
NSString *const HJWTypeSEL = @":";
NSString *const HJWTypeId = @"@";

/**
 *  返回值类型(如果是unsigned，就是大写)
 */
NSString *const HJWReturnTypeVoid = @"v";
NSString *const HJWReturnTypeObject = @"@";



