//
//  HJWMethod.m
//  HJWExtension
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "HJWMethod.h"
#import "HJWExtension.h"

@implementation HJWMethod
/**
 *  初始化
 *
 *  @param method    方法
 *  @param srcObject 哪个对象的方法
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithMethod:(Method)method srcObject:(id)srcObject
{
    if (self = [super initWithSrcObject:srcObject]) {
        self.method = method;
    }
    return self;
}

/**
 *  设置方法
 */
- (void)setMethod:(Method)method
{
    _method = method;
    
    HJWAssertParamNotNil(method);
    
    // 1.方法选择器
    _selector = method_getName(method);
    _name = NSStringFromSelector(self.selector);
    
    // 2.参数
    int step = 2; // 跳过前面的2个参数
    int argsCount = method_getNumberOfArguments(method);
    NSMutableArray *args = [NSMutableArray arrayWithCapacity:argsCount - step];
    for (int i = step; i<argsCount; i++) {
        HJWArgument *arg = [[HJWArgument alloc] init];
        arg.index = i - step;
        char *argCode = method_copyArgumentType(method, i);
        arg.type = [NSString stringWithUTF8String:argCode];
        free(argCode);
        [args addObject:arg];
    }
    _arguments = args;
    
    // 3.返回值类型
    char *returnCode = method_copyReturnType(method);
    _returnType = [NSString stringWithUTF8String:returnCode];
    free(returnCode);
}
@end
