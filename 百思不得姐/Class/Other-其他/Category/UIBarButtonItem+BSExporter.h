//
//  UIBarButtonItem+BSExporter.h
//  百思不得姐
//
//  Created by zhuo on 16/5/9.
//  Copyright © 2016年 com.lrts.zhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BSExporter)
+(instancetype) itemWithImage:(NSString*)noraml selectImg:(NSString*)select target:(id)targetVC actcion:(SEL) sel;
@end
