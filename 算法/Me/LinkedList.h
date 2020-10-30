//
//  LinkedList.h
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct number {
    int score;
    struct number *next;
} LinkList;

/// 头结点
/// 链表的创建，修改，删除，插入，输出，排序，反序
@interface LinkedList : NSObject

/// 1 2 3 4 5 6 7 8 9
LinkList *createList(int n);


void printLinkList(LinkList * h);
///> 获取链表个数
int linkListCount(LinkList * h);
///> 输出链表数组
int *linkListArr(LinkList * h);


///> 修改链表
void changeList(LinkList *list,int n,int value);
///> 插入链表  只可以插入一个节点note
void insertList(LinkList *list,int n,int value);
///> 删除链表
void deletList(LinkList *list,int n);
///> 链表反转
LinkList* reverseList(LinkList* head);



/*
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。

 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。

 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。

 示例：

 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
*/
///> 两数之和
LinkList* addTwoNumbers(LinkList* l1, LinkList* l2);
///> 输出链表的大小。比如 1 2 3 那么输出一百二十三
int linkListValue(LinkList * h);
///> 输出位数100 输出 3
int getIntSize(int number);


#pragma mark - 合并有序链表
LinkList * mergeOrderedLinkList(LinkList *LA,LinkList *LB);
/// 递归实现
LinkList* mergeTwoLists(LinkList* l1,LinkList* l2);
@end

