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
    
    UIViewController* VC1 = [[UIViewController alloc] init];
    VC1.view.backgroundColor = [UIColor greenColor];
    VC1.title = @"精华";
    [VC1.tabBarItem setImage:[UIImage imageNamed:@"tabBar_essence_icon"]];
    UIImage* selectImg = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    selectImg = [selectImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];// 使用原始的图片，不渲染
    [VC1.tabBarItem setSelectedImage:selectImg];
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    dict[NSForegroundColorAttributeName] = [UIColor grayColor]; // 颜色
    [VC1.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    dict[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [VC1.tabBarItem setTitleTextAttributes:dict forState:UIControlStateSelected];
    
    [self addChildViewController:VC1];
    
    UIViewController* VC2 = [[UIViewController alloc] init];
    VC2.view.backgroundColor = [UIColor redColor];
    VC2.title = @"新帖";
    [VC2.tabBarItem setImage:[UIImage imageNamed:@"tabBar_new_icon"]];
    [VC2.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_new_click_icon"]];
    [self addChildViewController:VC2];
    
    UIViewController* VC3 = [[UIViewController alloc] init];
    VC3.view.backgroundColor = [UIColor blueColor];
    [VC3.tabBarItem setImage:[UIImage imageNamed:@"tabBar_friendTrends_icon"]];
    [VC3.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"]];
    VC3.title = @"关注";
    [self addChildViewController:VC3];
    
    UIViewController* VC4 = [[UIViewController alloc] init];
    VC4.title = @"我的";
    [VC4.tabBarItem setImage:[UIImage imageNamed:@"tabBar_me_icon"]];
    [VC4.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_me_click_icon"]];
    VC4.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:VC4];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
