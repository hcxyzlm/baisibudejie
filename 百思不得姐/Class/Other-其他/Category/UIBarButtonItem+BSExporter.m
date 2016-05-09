//
//  UIBarButtonItem+BSExporter.m
//  百思不得姐
//
//  Created by zhuo on 16/5/9.
//  Copyright © 2016年 com.lrts.zhuo. All rights reserved.
//

@implementation UIBarButtonItem (BSExporter)

+(instancetype) itemWithImage:(NSString*)noraml selectImg:(NSString*)select target:(id)targetVC actcion:(SEL) sel
{
    // 添加左边的导航条
    UIButton* Button = [UIButton buttonWithType:UIButtonTypeCustom];
    [Button setBackgroundImage:[UIImage imageNamed:noraml] forState:UIControlStateNormal];
    [Button setBackgroundImage:[UIImage imageNamed:select] forState:UIControlStateHighlighted];
    [Button addTarget:targetVC action:sel forControlEvents:UIControlEventTouchUpInside];
    Button.size = [Button currentBackgroundImage].size;
    
    return [[self alloc] initWithCustomView:Button];
}

@end
