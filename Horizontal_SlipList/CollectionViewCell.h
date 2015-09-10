//
//  CollectionViewCell.h
//  Horizontal_SlipList
//
//  Created by 史练练 on 15/9/10.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell<UICollectionViewDataSource,UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *lableView;

@property (strong, nonatomic) IBOutlet UICollectionView *slipView;


@end
