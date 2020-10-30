//
//  BiTree.m
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "Tree.h"
#import "CStack.h"

@implementation Tree

/*
         A
     B        C
  D     E   F    G
H  I  J  K
*/
BiTree *createTree() {
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
    
    return BiA;
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
    MidOrderSorting(T->lBi);
    printf(" %c ",T->c);
    MidOrderSorting(T->rBi);
}


///> 后续遍历
void AftOrderSorting(BiTree *T) {
    if (T == NULL) {
        return;
    }
    AftOrderSorting(T->lBi);
    AftOrderSorting(T->rBi);
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


/*
         A
     B        C
  D     E   F    G
H  I  J  K
*/
///> 前序遍历。C语言实现栈数据结构
void NonRecursivePreOrderSorting(BiTree *T,int size) {
    BiTree *stack[size];
    BiTree *temp = T;
        
    while (temp != NULL || !isEmpty()) {
        
        /// 输出左面子叶
        while (temp != NULL) {
            push(stack, temp);
            printf(" %c ",temp->c);
            temp = temp->lBi;
        }
                
        if (!isEmpty()) {
            temp = pop(stack);
            temp = temp->rBi;
        }
    }
}


///> 中序遍历
void NonRecursiveMidOrderSorting(BiTree *T,int size) {
    BiTree *stack[size];
    BiTree *temp = T;
        
    while (temp != NULL || !isEmpty()) {
        
        /// 输出左面子叶
        while (temp != NULL) {
            push(stack, temp);
            temp = temp->lBi;
        }
                
        if (!isEmpty()) {
            temp = pop(stack);
            printf(" %c ",temp->c);
            temp = temp->rBi;
        }
    }
}
///> 后续遍历
void NonRecursiveAftOrderSorting(BiTree *T,int size);





///< 非递归实现 按层排序
void LevelTraversal(BiTree *T,int size) {
    if (T) {
        int index = 0;
        
        ///< 指的是节点数
        int node = 0;
        
        BiTree *queue[size];
        queue[index] = T;
        
        while (node <= index) {
            NSLog(@"== %d",node);
            if (queue[node]->lBi) {
                index++;
                queue[index] = queue[node]->lBi;
                NSLog(@"lBi %d",index);
            }
            if (queue[node]->rBi) {
                index++;
                queue[index] = queue[node]->rBi;
                NSLog(@"rBi %d",index);
            }
            node++;
        }
        
        for (NSInteger i = 0; i < size; i++) {
            printf(" %c ",queue[i]->c);
        }
    }
}


/// 双向链表[key value]
@end
