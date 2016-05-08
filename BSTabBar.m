//
//  BSTabBar.m
//  百思不得姐
//
//  Created by zhuo on 16/5/7.
//  Copyright © 2016年 com.lrts.zhuo. All rights reserved.
//

#import "BSTabBar.h"
@interface BSTabBar()
@property (nonatomic, weak) UIButton*publishBtn; // 增加按钮
@end

@implementation BSTabBar
-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    // 增加一个按钮
    UIButton* publishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
    [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
    
    [publishBtn addTarget:self action:@selector(onClickPublish:) forControlEvents:UIControlEventTouchUpInside];
    publishBtn.size = CGSizeMake(publishBtn.currentBackgroundImage.size.width, publishBtn.currentBackgroundImage.size.height);
    
    [self addSubview:publishBtn];
    self.publishBtn = publishBtn;
    
    return self;
}

- (void)onClickPublish:(UIButton*)btn
{
    NSLog(@"%s", __func__);
    if (self.buttonBlock) {
        self.buttonBlock(0);
    }
}
// 调整子布局

- (void) layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat itemWidth = (CGRectGetWidth(self.frame) / 5);
    self.publishBtn.x = self.width/2;
    self.publishBtn.y = self.height/2;
    BSLOG(@"%f, %f", self.publishBtn.center.x, self.publishBtn.center.y);
    self.publishBtn.center = CGPointMake(self.width/2, self.height/2);
    
//     self.publishBtn.frame = CGRectMake(self.frame.size.width/2, self.frame.size.height/2, self.publishBtn.currentBackgroundImage.size.width, self.publishBtn.currentBackgroundImage.size.height);
//    self.publishBtn.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    // 分成5等分
    NSInteger index = 0;
    for (UIView* subView in self.subviews)
    {
       if ([subView isKindOfClass:NSClassFromString(@"UITabBarButton")])
       {
           NSLog(@"index = %zd",index);
           //CGRect frame =subView.frame;
          subView.x = (index > 1 ?(index+1): index) * itemWidth;
           //subView.frame = frame;
           index++;
       }
        
    }
    NSLog(@"%@", self.subviews);
}

@end
