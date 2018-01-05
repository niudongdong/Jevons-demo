//
//  TabBarController.m
//  Demo
//
//  Created by 牛冬冬 on 2018/1/4.
//  Copyright © 2018年 JevonsNiu. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


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
                selectImageNam:(NSString *)selectImageName
{
    // childController视图控制器
    Class class = NSClassFromString(childController);
    UIViewController *viewController = class ? [[class alloc] init] : [[UIViewController alloc] init];
    
    // 设置 tabbaritem
    viewController.title = title ? : @"";
    
    // 选中状态下的文字属性
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = titleColor;
    [viewController.tabBarItem setTitleTextAttributes:attr forState:UIControlStateSelected];
    
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.image = image;
    
    UIImage *selectImage = [UIImage imageNamed:selectImageName];
    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = selectImage;
    
    // 添加
    [self addChildViewController:viewController];
}
















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
