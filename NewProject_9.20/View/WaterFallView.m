//
//  WaterFallView.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/1.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "WaterFallView.h"
#import "waterFallCollectionViewCell.h"
#import "Masonry.h"
#import "CommonDefine.h"

@interface WaterFallView()

@property (nonatomic, strong) UICollectionView *collectionView;

@end
@implementation WaterFallView

#pragma mark init

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [_collectionView mas_makeConstraints:^(MASConstraintMaker *maker) {
        maker.width.and.height.equalTo(self);
    }];
    
}
- (void)commonInit {
    UICollectionViewLayout *collectionLayput = [[UICollectionViewLayout alloc] init];
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:collectionLayput];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self addSubview:_collectionView];
}

#pragma mark UICollectionView delegate

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    return 5;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    waterFallCollectionViewCell *myCell=[collectionView dequeueReusableCellWithReuseIdentifier:
                                  @"MyCell" forIndexPath:indexPath];
    [myCell setBackgroundColor:[UIColor greenColor]];
    return  myCell;
}

@end
