//
//  CStack.h
//  算法
//
//  Created by 王景伟 on 2020/9/17.
//  Copyright © 2020 rumble. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"

NS_ASSUME_NONNULL_BEGIN

@interface CStack : NSObject

///< 输入一个结构体数字的指针
void push(BiTree **T, BiTree *data);

BiTree *pop(BiTree **T);

bool isEmpty(void);
@end

NS_ASSUME_NONNULL_END
