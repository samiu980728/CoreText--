//
//  ViewController.m
//  CoreText - 再飞行
//
//  Created by 萨缪 on 2019/2/5.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "ViewController.h"
#import "BQDisplayView.h"
#import "CTFrameParserConfig.h"
#import "CTFrameParser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initUI];
}

- (void)initUI
{
    BQDisplayView * displayView = [[BQDisplayView alloc] initWithFrame:CGRectMake(10, 100, self.view.bounds.size.width - 20, 0)];
    displayView.backgroundColor = [UIColor redColor];
    
    //配置文本属性信息
    CTFrameParserConfig * config = [[CTFrameParserConfig alloc] init];
    config.width = displayView.bounds.size.width;
    config.textColor = [UIColor redColor];
    
    //得到文本数据
    displayView.data = [CTFrameParser parseTemplateWhithoutFileButConfig:config];
    [self.view addSubview:displayView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
