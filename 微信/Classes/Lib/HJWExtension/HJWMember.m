//
//  HJWMember.m
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "HJWMember.h"
#import "HJWExtension.h"
#import "HJWFoundation.h"
#import "HJWExtension.h"

@implementation HJWMember

/**
 *  初始化
 *
 *  @param srcObject 来源于哪个对象
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithSrcObject:(id)srcObject
{
    if (self = [super init]) {
        _srcObject = srcObject;
    }
    return self;
}

- (void)setSrcClass:(Class)srcClass
{
    _srcClass = srcClass;
    
    HJWAssertParamNotNil(srcClass);
    
    _srcClassFromFoundation = [HJWFoundation isClassFromFoundation:srcClass];
}

HJWLogAllIvrs
@end
