//
//  Recursive.m
//  算法
//
//  Created by 王景伟 on 2020/10/23.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "Recursive.h"

const int VALUE[] = {60, 20, 10, 60, 100}; /// 价值
const int WEIGHT[] = {20, 30, 50, 60, 80}; /// 重量


@implementation Recursive

#pragma mark - 递归背包问题
/// 个数。重量
int recursivBackpack(int number,int weight) {
    if (number < 0) {
        return 0;
    }
    int value1 = 0;
    int value2 = 0;

    if (weight > WEIGHT[number]) {
        value1 = recursivBackpack(number - 1, weight - WEIGHT[number]) + VALUE[number];
    }
    value2 = recursivBackpack(number, weight);

    return value1 > value2 ? value1 : value2;
}



#pragma mark - 非递归背包问题
int f[151];
void cycleBackpack(int totleW, int w,int v) {
    for (int i = totleW; i > w; i--) {
        int value1 = f[i - w] + v;
        int value2 = f[i];
        f[i] = value1 > value2 ? value1 : value2;
    }
}

int calculateBackpack(int number,int weight) {
    for (int i = 0; i < weight + 1; i++) {
        f[i] = 0;
    }

    for (int i = 0; i < number; i++) {
        cycleBackpack(weight, WEIGHT[i], VALUE[i]);
    }
    return f[weight];
}



#pragma mark - 递归硬币问题

int n = 3;
int a[3] = {1,3,5};


int d[100];
int vis[100];

int coinsNumber(int total) {
    if (vis[total] == 1) {
        return d[total];
    }
    
    vis[total] = 1;
    d[total] = 100000;
    if (total == 0) d[total] = 0;
    
    for (int i = 0; i < n; i++) {
        if (total - a[i] >= 0) {
            int value = d[total];
            int value1 = coinsNumber(total - a[i]) + 1;
            d[total] = value > value1 ? value1 : value1;
        }
    }
    return d[total];
}



@end
