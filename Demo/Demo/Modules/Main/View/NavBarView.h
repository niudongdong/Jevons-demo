//
//  NavBarView.h
//  Demo
//
//  Created by 牛冬冬 on 2018/1/4.
//  Copyright © 2018年 JevonsNiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavBarView : UINavigationBar

@property (nonatomic, copy) NSString* title;    //标题
@property (nonatomic, strong) UIColor * titleColor; ///<标题颜色
@property (nonatomic, strong) UIBarButtonItem *leftBarButtonItem;
@property (nonatomic, strong) UIBarButtonItem *rightBarButtonItem;

@property (nonatomic, copy) NSArray<UIBarButtonItem *> *leftBarButtonItems;
@property (nonatomic, copy) NSArray<UIBarButtonItem *> *rightBarButtonItems;


- (void)setNaviViewTransparent;
/**
 *  显示底部阴影条
 */
- (void)showShadow;

@end
