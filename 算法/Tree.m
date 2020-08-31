//
//  BiTree.m
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "Tree.h"

@implementation Tree

/*
         A
     B        C
  D     E   F    G
H  I  J  K
*/
- (void)createTree {
    ////> 手动创建二叉树
    BiTree *BiH = (BiTree *)malloc(sizeof(BiTree));
    BiH->c = 'H';
    BiH->lBi = NULL;
    BiH->rBi = NULL;
    
    BiTree *BiI = (BiTree *)malloc(sizeof(BiTree));
    BiI->c = 'I';
    BiI->lBi = NULL;
    BiI->rBi = NULL;
    
    BiTree *BiJ = (BiTree *)malloc(sizeof(BiTree));
    BiJ->c = 'J';
    BiJ->lBi = NULL;
    BiJ->rBi = NULL;
    
    BiTree *BiK = (BiTree *)malloc(sizeof(BiTree));
    BiK->c = 'K';
    BiK->lBi = NULL;
    BiK->rBi = NULL;
    
    
    BiTree *BiG = (BiTree *)malloc(sizeof(BiTree));
    BiG->c = 'G';
    BiG->lBi = NULL;
    BiG->rBi = NULL;
    
    BiTree *BiF = (BiTree *)malloc(sizeof(BiTree));
    BiF->c = 'F';
    BiF->lBi = NULL;
    BiF->rBi = NULL;
    
    BiTree *BiE = (BiTree *)malloc(sizeof(BiTree));
    BiE->c = 'E';
    BiE->lBi = BiJ;
    BiE->rBi = BiK;

    BiTree *BiD = (BiTree *)malloc(sizeof(BiTree));
    BiD->c = 'D';
    BiD->lBi = BiH;
    BiD->rBi = BiI;

    
    
    BiTree *BiC = (BiTree *)malloc(sizeof(BiTree));
    BiC->c = 'C';
    BiC->lBi = BiF;
    BiC->rBi = BiG;
    
    BiTree *BiB = (BiTree *)malloc(sizeof(BiTree));
    BiB->c = 'B';
    BiB->lBi = BiD;
    BiB->rBi = BiE;
    
    BiTree *BiA = (BiTree *)malloc(sizeof(BiTree));
    BiA->c = 'A';
    BiA->lBi = BiB;
    BiA->rBi = BiC;
}


///> 前序遍历
void PreOrderSorting(BiTree *T) {
    if (T == NULL) {
        return;
    }
    printf(" %c ",T->c);
    
    PreOrderSorting(T->lBi);
    PreOrderSorting(T->rBi);
}


///> 中序遍历
void MidOrderSorting(BiTree *T) {
    if (T == NULL) {
        return;
    }
    PreOrderSorting(T->lBi);
    printf(" %c ",T->c);
    PreOrderSorting(T->rBi);
}


///> 后续遍历
void AftOrderSorting(BiTree *T) {
    if (T == NULL) {
        return;
    }
    PreOrderSorting(T->lBi);
    PreOrderSorting(T->rBi);
    printf(" %c ",T->c);
}


///> 反转 左右子叶交换
void ExchangeBitree(BiTree *T) {
    if (T == NULL) {
        return;
    }
    BiTree *temp = T->lBi;
    T->lBi = T->rBi;
    T->rBi = temp;
    ExchangeBitree(T->lBi);
    ExchangeBitree(T->rBi);
}


@end
