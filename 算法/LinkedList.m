//
//  LinkedList.m
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

/// 1 2 3 4 5 6 7 8 9
LinkList *createList(int n) {
    ///< 头部节点  最后一个指向NULL
    LinkList *head = malloc(sizeof(LinkList));
    LinkList *end = head;
    for (int i = 0; i < n; i++) {
        LinkList *node = malloc(sizeof(LinkList));
        node->score = i;
        end->next = node;
        end = node;
    }
    end->next = NULL;
    return head;
}

/// 输出链表
void printLinkList(LinkList * h) {
    int i = 0;
    while (h->next != NULL) {
        h = h->next;
        NSLog(@"printLinkList %d",h->score);
        i++;
    }
}
///> 获取链表个数
int linkListCount(LinkList * h) {
    int i = 0;
    while (h->next != NULL) {
        h = h->next;
        i++;
    }
    return i;
}
///> 输出链表数组
int *linkListArr(LinkList * h) {
    int count = linkListCount(h);
    int *arr = (int *)malloc(count);
    int i = 0;
    while (h->next != NULL) {
        h = h->next;
        arr[i] = h->score;
        i++;
    }
    arr[i] = h->score;
    return arr;
}



///> 修改链表
void changeList(LinkList *list,int n,int value) {
    int i = 0;
    while (list->next != NULL) {
        list = list->next;
        if (i == n) {
            list->score = value;
            break;
        }
        i++;
    }
}
///> 插入链表  只可以插入一个节点note
void insertList(LinkList *list,int n,int value) {
    LinkList *insert = malloc(sizeof(LinkList));
    int i = 0;
    while (list->next != NULL) {
        list = list->next;
        if (i == n) {
            LinkList *temp = list->next;
            list->next = insert;
            insert->next = temp;
            break;
        }
        i++;
    }
    
}
///> 删除链表
void deletList(LinkList *list,int n);
///> 链表反转  h 0 1 2 3 4 5 6 7 8 9
LinkList* reverseList(LinkList*head) {
    LinkList *node0 = head->next;
    LinkList *temp = node0;
    if (head == NULL || node0 == NULL) {
        return head;
    }
    
    while (node0->next) {
        LinkList *node1 = node0->next;
        LinkList *node2 = node1->next;
        
        ///< 反转
        head->next = node1;
        node1->next = temp;
        
        ///< 指向下一个
        node0->next = node2;
        ///< 保存now
        temp = node1;
    }
    
    return head;
}


///> 两数之和
LinkList* addnode1Numbers(LinkList* l1, LinkList* l2);


///> 输出链表的大小。比如 1 2 3 那么输出一百二十三
int linkListValue(LinkList * h);
///> 输出位数100 输出 3
int getIntSize(int number);

@end
