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

@interface WaterFallView() {
    int sum;
}

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *heightArr;

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
    UICollectionViewFlowLayout *collectionLayput = [[UICollectionViewFlowLayout alloc] init];
    [collectionLayput setScrollDirection:UICollectionViewScrollDirectionVertical];
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:collectionLayput];
    [self.collectionView registerClass:[waterFallCollectionViewCell class]forCellWithReuseIdentifier:@"MyCell"];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self addSubview:_collectionView];
    
    self.heightArr = [@[] mutableCopy];
}

#pragma mark UICollectionView delegate

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    return 5;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    /*
    waterFallCollectionViewCell *myCell = [collectionView dequeueReusableCellWithReuseIdentifier:
                                  @"MyCell" forIndexPath:indexPath];
    [myCell setBackgroundColor:[UIColor greenColor]];
    return  myCell;
     */
    waterFallCollectionViewCell *myCell=[collectionView dequeueReusableCellWithReuseIdentifier:
                                  @"MyCell" forIndexPath:indexPath];
    [myCell setBackgroundColor:[UIColor redColor]];
    NSInteger remainder = indexPath.row%3;
    NSInteger currentRow = indexPath.row/3;
    
    CGFloat currentHeight = [self.heightArr[indexPath.row] floatValue];
    
    CGFloat positonX = 100 * remainder + 10 * (remainder+1);
    CGFloat positionY = (currentRow + 1) * 10;
    for (NSInteger i = 0; i < currentRow; i++) {
        NSInteger position = remainder + i * 3;
        positionY += [self.heightArr[position] floatValue];
    }
    myCell.frame = CGRectMake(positonX, positionY,100,currentHeight) ;
    
//    NSUInteger *randomNumber = arc4random_uniform(9);
//    NSString *girlFilename = [NSString stringWithFormat:@"Girl%lu.jpg", (unsigned long)randomNumber];
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:girlFilename]];
//    
//    [myCell setBackgroundView:imageView];
    [myCell setBackgroundColor:[UIColor yellowColor]];
    return  myCell;
}

/**
 *  设置每一个cell的size大小
 *
 *  @param collectionView
 *  @param collectionViewLayout
 *  @param indexPath
 *
 *  @return size
 */
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"sum == %d",sum++);
    CGFloat height=100 + (arc4random()%100);
    [self.heightArr addObject:[NSString stringWithFormat:@"%f",height]];
    return  CGSizeMake(100, height);
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return CGSizeMake(96, 100);
//}

@end
