//
//  BQDisplayView.h
//  CoreText - 再飞行
//
//  Created by 萨缪 on 2019/2/5.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreTextData.h"
@interface BQDisplayView : UIView

/**  绘制文本的数据信息 */
/**  这里不应该是NSString * 类型的 */
//@property (nonatomic, copy) NSString * dataStr;

@property (nonatomic, strong) CoreTextData * data;

@end
