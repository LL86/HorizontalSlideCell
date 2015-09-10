//
//  CollectionViewCell.m
//  Horizontal_SlipList
//
//  Created by 史练练 on 15/9/10.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "CollectionViewCell.h"
#import "CardCell.h"

static NSString * CellIdentifier = @"scrollCell";
@implementation CollectionViewCell

- (void)awakeFromNib {

    self.backgroundColor = [UIColor colorWithRed:0.83f green:0.82f blue:0.84f alpha:1.0];
    [self setUpSlipCollectionView];

}

#pragma mark 横向表格cell创建
- (void)setUpSlipCollectionView{

    self.slipView.delegate = self;
    self.slipView.dataSource = self;
    
    self.slipView.showsHorizontalScrollIndicator = NO;

    self.slipView.backgroundColor = [UIColor colorWithRed:0.83f green:0.82f blue:0.84f alpha:1.0];

    [self.slipView registerClass:[CardCell class] forCellWithReuseIdentifier:CellIdentifier];
}

#pragma mark -- UICollectionViewDataSource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    CardCell * cell = [self.slipView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];


    return cell;
}

#pragma mark --UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, self.slipView.frame.size.height);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 6, 0, 6);
}

#pragma mark --UICollectionViewDelegate

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld被选中了",(long)indexPath.row);
}



@end
