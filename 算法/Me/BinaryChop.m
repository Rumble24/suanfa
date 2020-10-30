//
//  BinaryChop.m
//  算法
//
//  Created by 王景伟 on 2020/8/31.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "BinaryChop.h"

@implementation BinaryChop

/// 二分查找  有序数组 查找
+ (NSInteger)isContainsNumber:(NSInteger)number arr:(NSMutableArray *)arr {
    NSInteger left = 0;
    NSInteger right = arr.count - 1;
    while (left <= right) {
        NSInteger mid = (left + right) / 2;
        if ([arr[mid] integerValue] == number) {
            return mid;
        } else if ([arr[mid] integerValue] < number) {
            left = mid + 1;
        } else if ([arr[mid] integerValue] > number) {
            right = mid - 1;
        }
    }
    return NO;
}
@end
