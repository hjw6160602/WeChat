//
//  HJWType.m
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "HJWType.h"
#import "HJWExtension.h"
#import "HJWFoundation.h"
#import "HJWExtension.h"

@implementation HJWType

- (instancetype)initWithCode:(NSString *)code
{
    if (self = [super init]) {
        self.code = code;
    }
    return self;
}

/** 类型标识符 */
- (void)setCode:(NSString *)code
{
    _code = code;
    
    HJWAssertParamNotNil(code);
    
    if (code.length == 0 || [code isEqualToString:HJWTypeSEL] ||
        [code isEqualToString:HJWTypeIvar] ||
        [code isEqualToString:HJWTypeMethod]) {
        _KVCDisabled = YES;
    } else if ([code hasPrefix:@"@"] && code.length > 3) {
        // 去掉@"和"，截取中间的类型名称
        _code = [code substringFromIndex:2];
        _code = [_code substringToIndex:_code.length - 1];
        _typeClass = NSClassFromString(_code);
        
        _fromFoundation = [HJWFoundation isClassFromFoundation:_typeClass];
    }
}

HJWLogAllIvrs
@end
