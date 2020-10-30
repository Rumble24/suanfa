//
//  TwoLinkList.m
//  算法
//
//  Created by 王景伟 on 2020/10/28.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "TwoLinkList.h"

@implementation TwoLinkList

/// 1->2->3->4->5->NULL
TwoList *revertList(TwoList *head) {
    if (head == NULL || head->next == NULL) {
        return head;
    }
    
    TwoList *temp;
    TwoList *current = head->next;
    while (current != NULL) {
        temp = current->pre;
        current->pre = current->next;
        current->next = temp;
        if (current->pre == NULL) {
            break;
        } else {
            current = current->pre;
        }
    }
    head->next->next = NULL;
    head->next = current;
    return head;
}


TwoList *revertList2(TwoList *head) {
    if (head == NULL || head->next == NULL) {
        return head;
    }
    
    TwoList *temp;
    TwoList *current = head->next;
    while (current != NULL) {
        
        /// 交换
        temp = current->pre;
        current->pre = current->next;
        current->next = temp;
        
        if (current->pre == NULL) {
            break;;
        } else {
            current = current->pre;
        }
    }
    head->next->next = NULL;
    head->next = current;
    return head;
}


int nodiGui(int i) {
    if (i < 0) {
        return 0;
    }
    if (i == 2 || i == 1) {
        return 1;
    }
    
    int temp = 0;
    int result = 1;
    int pre = 1;
    for (int n = 3; n < i; n++) {
        temp = result;
        result = temp + pre;
        pre = temp;
    }
    
    return result;
}


+ (void)fastSortWithArr:(NSMutableArray *)arr left:(NSInteger)l right:(NSInteger)r {
    
    if (l >= r) {
        return;
    }
    
    NSInteger left = l;
    NSInteger right = r;
    NSInteger key = [arr[l] integerValue];
    
    while (left < right) {
        while (<#condition#>) {
            <#statements#>
        }
    }
    
}

@end
