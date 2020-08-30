//
//  Sort.h
//  算法
//
//  Created by rumble on 2020/8/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sort : NSObject

///< 快排
+ (void)fastSortWithArr:(NSMutableArray *)arr left:(NSInteger)l right:(NSInteger)r;

@end

NS_ASSUME_NONNULL_END
