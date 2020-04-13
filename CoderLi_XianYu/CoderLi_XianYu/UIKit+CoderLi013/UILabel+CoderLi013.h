//
//  UILabel+CoderLi013.h
//  UIKit_Learning
//
//  Created by lys013rt on 2020/4/11.
//  Copyright © 2020 CoderLi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (CoderLi013)

/**
 *  创建一个UILabel
 *
 *  @param frame     文字的坐标
 *  @param text      文字的内容
 *  @param font      文字的字体
 *  @param textColor 文字的字体颜色
 *  @param alignment 文字的对齐方式
 *
 *  @return 返回一个创建好的UILabel
 */
+ (instancetype)labelWithFrame:(CGRect)frame
                          text:(NSString *_Nonnull)text
                          font:(UIFont *_Nullable)font
                     textColor:(UIColor *_Nullable)textColor
                     alignment:(NSTextAlignment)alignment;

@end

NS_ASSUME_NONNULL_END
