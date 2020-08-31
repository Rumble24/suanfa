//
//  FullPermutation.m
//  算法
//
//  Created by 王景伟 on 2020/8/31.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "FullPermutation.h"

@implementation FullPermutation

+ (NSMutableArray *)arrangeArr:(NSMutableArray *)arr {
    if (arr.count <= 1) {
        return arr;
    }
    NSMutableArray *result = @[@[arr[0]].mutableCopy].mutableCopy;
    
    for (NSInteger i = 1; i < arr.count; i++) {
        /// 获取要插入的数据
        id data = arr[i];
        
        /// 插入result中
        NSMutableArray *temp = [NSMutableArray array];
        for (NSMutableArray *arr in result) {
            for (NSInteger i = 0; i < arr.count + 1; i++) {
                NSMutableArray *marr = [NSMutableArray arrayWithArray:arr];
                [marr insertObject:data atIndex:i];
                [temp addObject:marr];
            }
        }
        
        result = [NSMutableArray arrayWithArray:temp];
    }
    
    return result;
}

@end
