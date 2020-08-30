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
