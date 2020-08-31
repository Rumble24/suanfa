//
//  BiTree.h
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct tree {
    char c;
    struct tree *lBi;
    struct tree *rBi;
} BiTree;

/// 二叉树 的遍历  前  中  后  反转 左右子叶交换
@interface Tree : NSObject


/*
         A
     B        C
  D     E   F    G
H  I  J  K
*/
- (void)createTree;


///> 前序遍历
void PreOrderSorting(BiTree *T);
///> 中序遍历
void MidOrderSorting(BiTree *T);
///> 后续遍历
void AftOrderSorting(BiTree *T);
///> 反转 左右子叶交换
void ExchangeBitree(BiTree *T);


@end

NS_ASSUME_NONNULL_END
