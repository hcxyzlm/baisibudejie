//
//  BSVCTabbar.m
//  百思不得姐
//
//  Created by zhuo on 16/5/7.
//  Copyright © 2016年 com.lrts.zhuo. All rights reserved.
//

#import "BSVCTabbar.h"

@interface BSVCTabbar ()

@end

@implementation BSVCTabbar

- (void)viewDidLoad {
    [super viewDidLoad];
    // 初始化四个导航栏
    
    NSMutableDictionary* normalAttr = [[NSMutableDictionary alloc] init];
    normalAttr[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    normalAttr[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary* selectAttr = [[NSMutableDictionary alloc] init];
    selectAttr[NSFontAttributeName] = normalAttr[NSFontAttributeName];
    selectAttr[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    // 通过appar统一设置
    UITabBarItem* apparItem = [UITabBarItem appearance];
    [apparItem setTitleTextAttributes:normalAttr forState:UIControlStateNormal];
    [apparItem setTitleTextAttributes:selectAttr forState:UIControlStateNormal];
    
    UIViewController* VC1 = [[UIViewController alloc] init];
    VC1.view.backgroundColor = [UIColor greenColor];
    VC1.title = @"精华";
    [VC1.tabBarItem setImage:[UIImage imageNamed:@"tabBar_essence_icon"]];
    UIImage* selectImg = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    selectImg = [selectImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];// 使用原始的图片，不渲染
    [VC1.tabBarItem setSelectedImage:selectImg];
    [self addChildViewController:VC1];
    
    UIViewController* VC2 = [[UIViewController alloc] init];
    VC2.view.backgroundColor = [UIColor redColor];
    VC2.title = @"新帖";
    [VC2.tabBarItem setImage:[UIImage imageNamed:@"tabBar_new_icon"]];
    UIImage* selectImg1 = [UIImage imageNamed:@"tabBar_new_click_icon"];
    selectImg1 = [selectImg1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [VC2.tabBarItem setSelectedImage:selectImg1];
    [self addChildViewController:VC2];
    
    UIViewController* VC3 = [[UIViewController alloc] init];
    VC3.view.backgroundColor = [UIColor blueColor];
    [VC3.tabBarItem setImage:[UIImage imageNamed:@"tabBar_friendTrends_icon"]];
    UIImage* selectImg2 = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    selectImg2 = [selectImg2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [VC3.tabBarItem setSelectedImage:selectImg2];
    VC3.title = @"关注";
    [self addChildViewController:VC3];
    
    UIViewController* VC4 = [[UIViewController alloc] init];
    VC4.title = @"我的";
    [VC4.tabBarItem setImage:[UIImage imageNamed:@"tabBar_me_icon"]];
    UIImage* selectImg3 = [UIImage imageNamed:@"tabBar_me_click_icon"];
    selectImg3 = [selectImg3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [VC4.tabBarItem setSelectedImage:selectImg3];
    VC4.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:VC4];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
