//
//  Single.h
//  微信
//
//  Created by shoule on 15/6/24.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#ifndef ___Single_h
#define ___Single_h

// Single.h
#define singleton_interface(class) + (instancetype)shared##class;

// Single.m
#define singleton_implementation(class) \
static class *_instance; \
\
+ (id)allocWithZone:(struct _NSZone *)zone \
{ \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
    _instance = [super allocWithZone:zone]; \
    }); \
    \
    return _instance; \
} \
\
+ (instancetype)shared##class \
{ \
    if (_instance == nil) { \
        _instance = [[class alloc] init]; \
    } \
    \
    return _instance; \
}

#endif
