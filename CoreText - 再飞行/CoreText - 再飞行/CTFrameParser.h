//
//  CTFrameParser.h
//  CoreText - 再飞行
//
//  Created by 萨缪 on 2019/2/7.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CTFrameParserConfig.h"
#import "CoreTextData.h"

@interface CTFrameParser : NSObject

/**
 *  根据字符串和配置信息对象生成CoreTextData对象
 *
 *  @param content 字符串
 *  @param config  配置信息对象
 *
 *  @return CoreTextData对象
 */
+ (CoreTextData *)parseContent:(NSString *)content config:(CTFrameParserConfig *)config;

/**
 *  根据路径读取文件内容和配置信息对象一起生成CoreTextData对象
 *
 *  @param path   文件路径
 *  @param config 配置信息对象
 *
 *  @return CoreTextData对象
 */
//+ (CoreTextData *)parseTemplateFile:(NSString *)path
//                             config:(CTFrameParserConfig *)config ;

+ (CoreTextData *)parseTemplateWhithoutFileButConfig:(CTFrameParserConfig *)config ;

+ (NSAttributedString *)loadContentFromWithoutFileButconfig:(CTFrameParserConfig *)config
                                                  linkArray:(NSMutableArray *)linkArray ;
@end
