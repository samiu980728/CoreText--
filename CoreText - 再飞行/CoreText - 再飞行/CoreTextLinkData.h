//
//  CoreTextLinkData.h
//  CoreText - 再飞行
//
//  Created by 萨缪 on 2019/2/7.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreTextData.h"
#import <UIKit/UIKit.h>
/**
 *  url链接的数据类
 */
@interface CoreTextLinkData : NSObject

/**  NSString类型url链接地址 */
@property (nonatomic, strong) NSString *urlString;

/**  文字在属性文字中的范围 */
@property (nonatomic, assign) NSRange range;

/**
 *  若点击位置有链接返回链接对象否则返回nil
 *
 *  @param view  点击的视图
 *  @param point 点击位置
 *  @param data  存放富文本的数据
 *
 *  @return 返回链接对象
 */
+ (CoreTextLinkData *)touchLinkInView:(UIView *)view atPoint:(CGPoint)point data:(CoreTextData *)data;

@end
