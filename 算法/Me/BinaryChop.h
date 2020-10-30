//
//  BinaryChop.h
//  算法
//
//  Created by 王景伟 on 2020/8/31.
//  Copyright © 2020 rumble. All rights reserved.
//  二分查找

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BinaryChop : NSObject
/// 二分查找  有序数组 查找
+ (NSInteger)isContainsNumber:(NSInteger)number arr:(NSMutableArray *)arr;
@end

NS_ASSUME_NONNULL_END
