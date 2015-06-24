//
//  HJWIvar.m
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "HJWIvar.h"
#import "HJWTypeEncoding.h"
#import "HJWExtension.h"

@implementation HJWIvar
/**
 *  初始化
 *
 *  @param ivar      成员变量
 *  @param srcObject 哪个对象的成员变量
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithIvar:(Ivar)ivar srcObject:(id)srcObject
{
    if (self = [super initWithSrcObject:srcObject]) {
        self.ivar = ivar;
    }
    return self;
}

/**
 *  设置成员变量
 */
- (void)setIvar:(Ivar)ivar
{
    _ivar = ivar;
    
    HJWAssertParamNotNil(ivar);
    
    // 1.成员变量名
    _name = [NSString stringWithUTF8String:ivar_getName(ivar)];
    
    // 2.属性名
    if ([_name hasPrefix:@"_"]) {
        _propertyName = [_name stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:@""];
    } else {
        _propertyName = _name;
    }
    
    // 3.成员变量的类型符
    NSString *code = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
    _type = [[HJWType alloc] initWithCode:code];
}

/**
 *  获得成员变量的值
 */
- (id)value
{
    if (_type.KVCDisabled) return [NSNull null];
    return [_srcObject valueForKey:_propertyName];
}

/**
 *  设置成员变量的值
 */
- (void)setValue:(id)value
{
    if (_type.KVCDisabled) return;
    [_srcObject setValue:value forKey:_propertyName];
}

@end
