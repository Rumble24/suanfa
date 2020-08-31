//
//  main.m
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

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

    
    
    return 0;
}

/*
 
 9. 对数组arr内的元素组合进行全排列？
 input: [1, 2, 3]
 output: [123, 132, 213, 231, 312, 321]
 
 
 10.合并N个升序数组为一个升序数组？
 input: [[Int]]
 output: [Int]
 
 
 4.leetcode 134（https://leetcode-cn.com/problems/gas-station/）
 
 16，无重复字符的最长子串
 
 37.二分查找
 
 */
