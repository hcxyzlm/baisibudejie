//
//  BSTabBar.h
//  百思不得姐
//
//  Created by zhuo on 16/5/7.
//  Copyright © 2016年 com.lrts.zhuo. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^TabbarButtonClick)(NSUInteger index);
// 按钮点击
@interface BSTabBar : UITabBar
@property (copy  , nonatomic) TabbarButtonClick buttonBlock;
@end
