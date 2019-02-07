//
//  CoreTextData.h
//  CoreText - 再飞行
//
//  Created by 萨缪 on 2019/2/7.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>
@interface CoreTextData : NSObject

/** 文本绘制的区域大小 */
@property (nonatomic, assign) CTFrameRef ctFrame;

/** 文本绘制区域高度 */
@property (nonatomic, assign) CGFloat height;

// 这个数据类型不需要
/** 文本中存储图片信息数组 */
@property (nonatomic, strong) NSMutableArray *imageArray;

/** 文本中存储链接信息数组 */
@property (nonatomic, strong) NSMutableArray *linkArray;
@end
