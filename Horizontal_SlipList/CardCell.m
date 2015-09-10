//
//  CardCell.m
//  Horizontal_SlipList
//
//  Created by 史练练 on 15/9/10.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "CardCell.h"

@implementation CardCell

- (void)awakeFromNib {
    // Initialization code

}

- (instancetype)initWithFrame:(CGRect)frame{

    if (self) {
        self = [super initWithFrame:frame];
        self.backgroundColor = [UIColor whiteColor];
        [self setRoundCell];
        [self setUpCardImg];
        [self setUpCardLabel];
    }
    return self;
}

#pragma mark cell样式
- (void)setRoundCell{

    self.layer.cornerRadius = 14.0f;
    self.layer.masksToBounds = YES;
    self.clipsToBounds = YES;

    self.layer.shadowColor = [UIColor redColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 5);
    self.layer.shadowOpacity = 0.1;
}

#pragma mark 图片
- (void)setUpCardImg{

    self.cardImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - 30)];
    self.cardImg.backgroundColor = [UIColor colorWithRed:0.5233 green:0.8291 blue:1.0 alpha:1.0];

    [self.contentView addSubview:self.cardImg];
}
#pragma mark  标题
- (void)setUpCardLabel{

    self.cardLable = [[UILabel alloc] initWithFrame:CGRectMake(0, self.cardImg.frame.size.height, self.frame.size.width, 30)];
    self.cardLable.text = @"锅锅";
    self.cardLable.backgroundColor = [UIColor whiteColor];
    self.cardLable.textAlignment = NSTextAlignmentCenter;
    self.cardLable.font = [UIFont systemFontOfSize:16];

    [self.contentView addSubview:self.cardLable];

}

@end
