//
//  HJWFoundation.m
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "HJWFoundation.h"
#import "HJWExtension.h"

static NSArray *_foundationClasses;

@implementation HJWFoundation

+ (void)initialize
{
    _foundationClasses = @[@"NSObject", @"NSNumber",@"NSArray", @"NSURL", @"NSMutableURL",@"NSMutableArray",@"NSData",@"NSMutableData",@"NSDate",@"NSDictionary",@"NSMutableDictionary",@"NSString",@"NSMutableString"];
}

+ (BOOL)isClassFromFoundation:(Class)c
{
    HJWAssertParamNotNil2(c, NO);
    return [_foundationClasses containsObject:NSStringFromClass(c)];
}
@end
