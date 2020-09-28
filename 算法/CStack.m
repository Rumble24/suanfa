//
//  CStack.m
//  算法
//
//  Created by 王景伟 on 2020/9/17.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "CStack.h"

/// 栈数据结构。后进先出
@implementation CStack

static int top = -1;

void push(BiTree **T, BiTree *data) {
    top++;
    T[top] = data;
}

BiTree *pop(BiTree **T) {
    BiTree *current = T[top];
    T[top] = nil;
    top--;
    return current;
}

bool isEmpty(void) {
    if (top == -1) {
        return true;
    }
    return false;
}
@end
