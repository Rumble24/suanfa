//
//  MergeArr.m
//  算法
//
//  Created by 王景伟 on 2020/8/31.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "MergeArr.h"

@implementation MergeArr

+ (NSMutableArray *)mergeArr1:(NSMutableArray *)arr1 arr2:(NSMutableArray *)arr2 {
    NSMutableArray *mergeArr = [NSMutableArray arrayWithCapacity:arr1.count + arr2.count];
    
    NSInteger a = 0;
    NSInteger b = 0;
    NSInteger i = 0;
    
    while (a < arr1.count && b < arr2.count) {
        if (arr1[a] < arr2[b]) {
            mergeArr[i] = arr1[a];
            a++;
        } else {
            mergeArr[i] = arr2[b];
            b++;
        }
        i++;
    }
    
    /// 添加左面剩余
    for (NSInteger i = a; i < arr1.count; i++) {
        mergeArr[i] = arr1[a];
        i++;
    }
    
    /// 添加右面剩余
    for (NSInteger i = b; i < arr2.count; i++) {
        mergeArr[i] = arr2[b];
        i++;
    }
    
    return mergeArr;
}

@end
