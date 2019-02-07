//
//  CoreTextData.m
//  CoreText - 再飞行
//
//  Created by 萨缪 on 2019/2/7.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "CoreTextData.h"

@implementation CoreTextData

#pragma mark Request 懒加载
- (void)setCtFrame:(CTFrameRef)ctFrame
{
    if (_ctFrame != nil && _ctFrame != ctFrame) {
        CFRelease(_ctFrame);
    }
    CFRetain(ctFrame);
    _ctFrame = ctFrame;
}

- (void)dealloc
{
    if (self.ctFrame != nil) {
        CFRelease(self.ctFrame);
        self.ctFrame = nil;
    }
}


@end
