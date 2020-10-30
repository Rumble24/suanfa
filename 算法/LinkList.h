//
//  LinkList.h
//  算法
//
//  Created by 王景伟 on 2020/10/23.
//  Copyright © 2020 rumble. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct list {
    struct list *pre;
    struct list *next;
} TwoList;

@interface LinkList : NSObject

void deleteNode(TwoList * list, TwoList *node);

@end

NS_ASSUME_NONNULL_END
