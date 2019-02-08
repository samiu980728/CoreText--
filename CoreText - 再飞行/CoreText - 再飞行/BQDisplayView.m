//
//  BQDisplayView.m
//  CoreText - 再飞行
//
//  Created by 萨缪 on 2019/2/5.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "BQDisplayView.h"
#import <CoreText/CoreText.h>
#import "CoreTextLinkData.h"

@implementation BQDisplayView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setGestureEvent];
    }
    return self;
}

- (void)setGestureEvent
{
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureClickedEvent:)];
    [self addGestureRecognizer:tap];
}

#pragma mark - Request 手势的点击事件
- (void)tapGestureClickedEvent:(UITapGestureRecognizer *)tap
{
    //得到点击所在的位置
    CGPoint point = [tap locationInView:self];
    
    CoreTextLinkData * linkData = [CoreTextLinkData touchLinkInView:self atPoint:point data:self.data];
    if (linkData != nil) {
#pragma mark Request 新需求:想点击不同的文字 出现的弹窗上
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:linkData.urlString delegate:nil cancelButtonTitle:@"OK222" otherButtonTitles:nil];
        [alert show];
        return;
    }
}



- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1, -1);
    
    if (self.data) {
        //将文字绘制到上下文中
#pragma mark Question 这里应该是 self.data.ctFrame 所以还需要在CoreTextData文件中 设置ctFrame
        CTFrameDraw(self.data.ctFrame, context);
        //将图片绘制到上下文中
//        不需要
    }
}

- (void)setData:(CoreTextData *)data
{
    if (_data != data) {
        _data = data;
    }
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.bounds.size.width, self.data.height);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
