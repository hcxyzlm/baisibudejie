//
//  UIView+FrameEx.h
//  百思不得姐
//
//  Created by zhuo on 16/5/8.
//  Copyright © 2016年 com.lrts.zhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FrameEx)

@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

// 分类@property只会生成方法的声明，不会生成的方法的实现和_属性名

@end
