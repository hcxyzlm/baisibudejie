//
//  BSVCTabbar.m
//  百思不得姐
//
//  Created by zhuo on 16/5/7.
//  Copyright © 2016年 com.lrts.zhuo. All rights reserved.
//

#import "BSTabbarVC.h"
#import "BSessenceTV.h"
#import "BSNewTV.h"
#import "BSFriendTV.h"
#import "BSMeTV.h"
#import "BSCustomTabBar.h"

@interface BSTabbarVC ()

@end

@implementation BSTabbarVC

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
    
    BSessenceTV* VC1 = [[BSessenceTV alloc] init];
    VC1.view.backgroundColor = [UIColor greenColor];
    [self setupChildVC:VC1 title:@"精华" normalImg:@"tabBar_essence_icon" seleteImg:@"tabBar_essence_click_icon"];
    
    BSNewTV* VC2 = [[BSNewTV alloc] init];
    VC2.view.backgroundColor = [UIColor redColor];
    [self setupChildVC:VC2 title:@"新帖" normalImg:@"tabBar_new_icon" seleteImg:@"tabBar_new_click_icon"];
    
    BSFriendTV* VC3 = [[BSFriendTV alloc] init];
    VC3.view.backgroundColor = [UIColor blueColor];
    [self setupChildVC:VC3 title:@"关注" normalImg:@"tabBar_friendTrends_icon" seleteImg:@"tabBar_friendTrends_click_icon"];
    
    BSMeTV* VC4 = [[BSMeTV alloc] init];
    [self setupChildVC:VC4 title:@"我的" normalImg:@"tabBar_me_icon" seleteImg:@"tabBar_me_click_icon"];
    
    // 初始化自定义tabbar
    [self setValue:[[BSCustomTabBar alloc] init] forKey:@"tabBar"];
    
    NSLog(@"%@", self.tabBar);

}

- (void) setupChildVC:(UIViewController*) vc  title:(NSString*)title normalImg:(NSString*) normal seleteImg:(NSString*)select
{
    vc.tabBarItem.title = title;
    [vc.tabBarItem setImage:[UIImage imageNamed:normal]];
    UIImage* selectImage = [UIImage imageNamed:select];
    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [vc.tabBarItem setSelectedImage:selectImage];
    
    // 为每个控制器添加一个UINavigationController
    UINavigationController* nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nvc];
}

@end
