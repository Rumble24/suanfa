//
//  main.m
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//
// 动画： https://github.com/MisterBooo/LeetCodeAnimation

//他的博客：https://www.cxyxiaowu.com/leetcodeanimation

// 基础算法题：https://www.zhihu.com/question/24964987
#import <Foundation/Foundation.h>
#import "Sort.h"
#import "LinkedList.h"
#import "Tree.h"
#import "MergeArr.h"


int main(int argc, const char * argv[]) {
    
    NSArray *arr = @[@(29),@(23),@(54),@(3),@(34),@(4),@(34),@(54),@(24),@(40)];
    NSMutableArray *marr = arr.mutableCopy;
    
    ///< 快排
    [Sort fastSortWithArr:marr left:0 right:marr.count - 1];
    NSLog(@"main    %@",marr);

    
    ///< 链表
    LinkList *list = createList(10);
    printLinkList(list);
    NSLog(@"count %d",linkListCount(list));
    
    reverseList(list);
    printLinkList(list);
    NSLog(@"count %d",linkListCount(list));

    
    ///< 二叉树
    printf(" \n二叉树非递归实现\n ");
    BiTree *binaryTree = createTree();
    /// 递归
    PreOrderSorting(binaryTree);
    printf(" \n ");
    MidOrderSorting(binaryTree);
    printf(" \n ");
    AftOrderSorting(binaryTree);
    printf(" \n ");
    LevelTraversal(binaryTree,11);
    printf(" \n ");
    
    printf(" \n非递归实现\n ");
    
    /// 非递归实现
    NonRecursivePreOrderSorting(binaryTree,11);
    printf(" \n ");
    NonRecursiveMidOrderSorting(binaryTree,11);
    printf(" \n ");

    
    return 0;
}

