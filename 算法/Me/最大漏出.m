//
//  最大漏出.m
//  算法
//
//  Created by 王景伟 on 2020/10/30.
//  Copyright © 2020 rumble. All rights reserved.
//

#import "最大漏出.h"

@implementation ____

//static UIView *max;
//static CGFloat maxValue = 0;
//
//- (void)getSubView:(UIView *)view {
//    if (view) {
//        NSArray *subviews = view.subviews;
//        for (UIView *sub in subviews) {
//            
//            if (!sub.hidden) {
//                CGFloat value = [self getLeakage:sub];
//
//                if (maxValue == 0) {
//                    maxValue = value;
//                } else {
//                    if (value > maxValue) {
//                        max = sub;
//                        maxValue = value;
//                    }
//                }
//            }
//
//            [self getSubView:sub];
//        }
//    }
//}
//
//- (CGFloat)getLeakage:(UIView *)view {
//    CGFloat all = view.size.height * view.size.width;
//    for (UIView *sub in view.subviews) {
//        all -= sub.size.height * sub.size.width;
//    }
//    return all;
//}

@end
