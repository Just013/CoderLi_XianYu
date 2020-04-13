//
//  NSString+CoderLi013.m
//  自定义类工厂方法
//
//  Created by lys013rt on 2020/4/11.
//  Copyright © 2020 CoderLi. All rights reserved.
//

#import "NSString+CoderLi013.h"


@implementation NSString (CoderLi013)

- (int)calculateNumberCount {
    int number = 0;
    for (int i = 0; i < self.length; i ++) {
        unichar c = [self characterAtIndex:i];
        if (c >= '0' && c <= '9') {
            number ++;
        }
    }
    return number;
}

@end
