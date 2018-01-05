//
//  TabBarController.h
//  Demo
//
//  Created by 牛冬冬 on 2018/1/4.
//  Copyright © 2018年 JevonsNiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCItem : NSObject



@end



@interface TabBarController : UITabBarController

/**
 *  子视图控制器数组
 */
@property (nonatomic, copy) NSArray <VCItem*>*childControllers;

/**
 *  添加子视图控制器
 
 @param childController 类名
 @param title 标题
 @param imageName 图片名称
 @param selectImageName 选择图片名称
 */
- (void)addChildViewController:(NSString *)childController
                         title:(NSString *)title
              selectTitleColor:(UIColor *)titleColor
                     imageName:(NSString *)imageName
                selectImageNam:(NSString *)selectImageName;

@end
