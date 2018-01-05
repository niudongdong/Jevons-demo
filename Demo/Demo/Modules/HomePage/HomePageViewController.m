//
//  HomePageViewController.m
//  Demo
//
//  Created by 牛冬冬 on 2018/1/4.
//  Copyright © 2018年 JevonsNiu. All rights reserved.
//

#import "HomePageViewController.h"
#import "NavBarView.h"

@interface HomePageViewController ()

@property (nonatomic, strong) NavBarView *navBarView;
@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpUI];
}

- (void)setUpUI
{
    self.navBarView.title = @"首页";
    [_navBarView showShadow];
}










#pragma mark - lazy loading
- (NavBarView *)navBarView
{
    if (!_navBarView) {
        _navBarView = [NavBarView new];
        _navBarView.barTintColor = [UIColor whiteColor];
        [self.view addSubview:_navBarView];
        [_navBarView makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.equalTo(0);
            make.height.equalTo(kNavBarHeight);
        }];
    }
    return _navBarView;
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
