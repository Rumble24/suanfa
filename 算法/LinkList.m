//
//  LinkList.m
//  算法
//
//  Created by 王景伟 on 2020/10/23.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "LinkList.h"

@implementation LinkList

/// 0 1 2 3
void deleteNode(TwoList *list, TwoList *node) {
    if (node == NULL) {
        return;
    }
    
    TwoList *temp = list;
    
    while (temp->next) {
        if (temp->next == node) {
            
            /// 删除
            TwoList *pre = node->pre;
            TwoList *next = node->next;
            
            pre->next = next;
            next->pre = pre;
            
            break;
        }
    }
    
    /// IMP  sel  method
    /// 腾讯IM
    /// 1.资源优化[]。  2.编译成包符号
    /// fluter RN
}

@end
