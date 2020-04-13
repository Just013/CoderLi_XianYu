//
//  UILabel+CoderLi013.m
//  UIKit_Learning
//
//  Created by lys013rt on 2020/4/11.
//  Copyright © 2020 CoderLi. All rights reserved.
//

#import "UILabel+CoderLi013.h"


@implementation UILabel (CoderLi013)

+ (instancetype)labelWithFrame:(CGRect)frame
                          text:(NSString * _Nonnull)text
                          font:(UIFont * _Nullable)font
                     textColor:(UIColor * _Nullable)textColor
                     alignment:(NSTextAlignment)alignment
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    if (font) {
        [label setFont:font];
    }
    if (text && text.length) {
        [label setText:text];
    }
    [label setBackgroundColor:[UIColor clearColor]];
    if (textColor) {
        [label setTextColor:textColor];
    }
    if (alignment) {
        [label setTextAlignment:alignment];
    }
    return label;
}

@end
