//
//  Sort.m
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "Sort.h"

@implementation Sort


///   @[@(29),@(23),@(54),@(3),@(34),@(4),@(34),@(54),@(24),@(40)].mutableCopy;
///< 快排的思想是找到一个数 然后将小于的放在左面。大于的放在有面
+ (void)fastSortWithArr:(NSMutableArray *)arr left:(NSInteger)l right:(NSInteger)r {
    
    ///< 递归结束条件
    if (l == r || l > r) return;
    
    NSInteger left = l;
    NSInteger right = r;
    NSInteger key = [arr[l] integerValue];
    
    while (left < right) {
        ///< 排右面  小的往前面移动  因为要和交换位交换
        while ([arr[right] integerValue] >= key && left < right) {
            right--;
        }
        arr[left] = arr[right];
        
        
        ///< 排左面  大的往后面移动
        while ([arr[left] integerValue] <= key && left < right) {
            left++;
        }
        arr[right] = arr[left];
    }
    
    ///< 交换位归位
    arr[left] = @(key);
    
    NSLog(@"main    %@",arr);

    
    ///
    [self fastSortWithArr:arr left:l right:left - 1];
    
    [self fastSortWithArr:arr left:left + 1 right:r];
}

@end
