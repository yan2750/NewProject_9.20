//
//  WaterFallFlowViewController.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/11/11.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "WaterFallFlowViewController.h"
#import "WaterFallView.h"
#import "Masonry.h"

@interface WaterFallFlowViewController ()

@end

@implementation WaterFallFlowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatUI];
}

- (void)creatUI {
    WaterFallView *waterFall = [[WaterFallView alloc] init];
    [self.view addSubview:waterFall];
    [waterFall mas_makeConstraints:^(MASConstraintMaker *maker){
        maker.width.and.height.equalTo(self.view);
    }];
}

@end
