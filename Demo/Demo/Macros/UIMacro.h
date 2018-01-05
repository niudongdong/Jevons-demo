//
//  UIMacro.h
//  Demo
//
//  Created by 牛冬冬 on 2018/1/4.
//  Copyright © 2018年 JevonsNiu. All rights reserved.
//

#ifndef UIMacro_h
#define UIMacro_h

#define ColorFromRGB(rgbValue)  [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#pragma mark - 各高度
/**
 大小宽高等相关的宏定义
 */
#define kScreenWidth                [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight               [[UIScreen mainScreen] bounds].size.height
#define kNavBarHeight               (kScreenHeight == 812 ? 88.f : 64.f)
#define kTabBarHeight               (kScreenHeight == 812 ? 83.f : 49.f)
#define kStatusBarHeight            (kScreenHeight == 812 ? 44.f : 20.f)


#pragma mark - 字体
/**
 字体相关的宏定义
 18px   用于需要突出强调的内容
 16px   用于标题、项目
 14px   用于大部分正文文字
 12px   用于说明性文字（最小字号）
 36px   用于账单金额等需要特别强调的内容（最大字号）
 */
#define ChineseFontName                 @"PingFangSC-Regular"
#define LetterFontName                  @"Helvetica Neue"

#define FontWithNameSize(name, s)       [UIFont fontWithName:name size:s]
//中文字体
#define ChineseFontWithSize(s)          FontWithNameSize(ChineseFontName, s)
#define CFont36                         ChineseFontWithSize(36)
#define CFont32                         ChineseFontWithSize(32)
#define CFont24                         ChineseFontWithSize(24)
#define CFont18                         ChineseFontWithSize(18)
#define CFont16                         ChineseFontWithSize(16)
#define CFont14                         ChineseFontWithSize(14)
#define CFont12                         ChineseFontWithSize(12)
#define CFont10                         ChineseFontWithSize(10)
//英文/数字字体
#define LetterFontWithSize(s)           FontWithNameSize(LetterFontName, s)
#define LFont36                         LetterFontWithSize(36)
#define LFont32                         LetterFontWithSize(32)
#define LFont24                         LetterFontWithSize(24)
#define LFont22                         LetterFontWithSize(22)
#define LFont18                         LetterFontWithSize(18)
#define LFont16                         LetterFontWithSize(16)
#define LFont14                         LetterFontWithSize(14)
#define LFont12                         LetterFontWithSize(12)
#define LFont10                         LetterFontWithSize(10)
//相片默认体积
#define DefaultFileSize          100

#endif /* UIMacro_h */
