//
//  NavBarView.m
//  Demo
//
//  Created by 牛冬冬 on 2018/1/4.
//  Copyright © 2018年 JevonsNiu. All rights reserved.
//

#import "NavBarView.h"

@interface NavBarView ()

@property (nonatomic, strong) UINavigationItem *item;

@end

@implementation NavBarView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.translucent = NO;
        [self setup];
    }
    return self;
}

- (CGSize)intrinsicContentSize
{
    return UILayoutFittingExpandedSize;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    //注意导航栏及状态栏高度适配
    self.frame = CGRectMake(0, 0, self.mj_w, kNavBarHeight);
    for (UIView *subView in self.subviews) {
        if ([NSStringFromClass([subView class]) containsString:@"Background"]) {
            subView.frame = self.bounds;
        }else if ([NSStringFromClass([subView class]) containsString:@"ContentView"]){
            CGRect frame = subView.frame;
            frame.origin.y = kStatusBarHeight;
            frame.size.height = self.bounds.size.height-frame.origin.y;
            subView.frame = frame;
        }
    }
}

#pragma mark - 私有方法
- (void)setup
{
    self.item = [[UINavigationItem alloc] init];
    self.items = @[self.item];
}

#pragma mark - lazy loading
- (void)setTitle:(NSString *)title
{
    _title = title;
    self.item.title = title;
}

- (void)setTitleColor:(UIColor *)titleColor
{
    _titleColor = titleColor;
    [self setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                  _titleColor, NSForegroundColorAttributeName,
                                  ChineseFontWithSize(17), NSFontAttributeName,
                                  nil]];
}

- (void)setLeftBarButtonItem:(UIBarButtonItem *)leftBarButtonItem
{
    _leftBarButtonItem = leftBarButtonItem;
    self.item.leftBarButtonItem = leftBarButtonItem;
}

- (void)setRightBarButtonItem:(UIBarButtonItem *)rightBarButtonItem
{
    _rightBarButtonItem = rightBarButtonItem;
    self.item.rightBarButtonItem = rightBarButtonItem;
}

- (void)setLeftBarButtonItems:(NSArray<UIBarButtonItem *> *)leftBarButtonItems
{
    _leftBarButtonItems = leftBarButtonItems;
    self.item.leftBarButtonItems = leftBarButtonItems;
}

- (void)setRightBarButtonItems:(NSArray<UIBarButtonItem *> *)rightBarButtonItems{
    _rightBarButtonItems = rightBarButtonItems;
    self.item.rightBarButtonItems = rightBarButtonItems;
}

#pragma mark - 公开方法

- (void)setNaviViewTransparent
{
    self.translucent = YES;
    [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self setShadowImage:[UIImage new]];
}

/**
 *  显示底部阴影条
 */
- (void)showShadow
{
    [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self setShadowImage:[UIImage new]];
    self.layer.shadowColor = ColorFromRGB(0x3C6bf0).CGColor;
    self.layer.shadowOpacity = 0.05;
    self.layer.shadowOffset = CGSizeMake(0, 1);
    self.layer.shadowRadius = 4.0;
    self.layer.masksToBounds = NO;
}


@end
