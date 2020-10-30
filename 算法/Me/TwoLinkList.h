//
//  TwoLinkList.h
//  算法
//
//  Created by 王景伟 on 2020/10/28.
//  Copyright © 2020 rumble. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct two {
    int score;
    struct two *next;
    struct two *pre;
} TwoList;

@interface TwoLinkList : NSObject

/// 双向链表的反转
TwoList *revertList(TwoList *head);
@end

NS_ASSUME_NONNULL_END
