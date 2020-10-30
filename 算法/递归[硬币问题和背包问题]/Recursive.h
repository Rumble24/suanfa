//
//  Recursive.h
//  算法
//
//  Created by 王景伟 on 2020/10/23.
//  Copyright © 2020 rumble. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//const int W = 150;
//const int number = 5;

@interface Recursive : NSObject

/// 递归背包问题
int recursivBackpack(int number,int weight);

/// 非递归背包问题
int calculateBackpack(int number,int weight);

/// 递归硬币问题
int coinsNumber(int total);
@end

NS_ASSUME_NONNULL_END
