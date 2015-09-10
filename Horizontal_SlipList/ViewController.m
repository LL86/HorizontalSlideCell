//
//  ViewController.m
//  Horizontal_SlipList
//
//  Created by 史练练 on 15/9/10.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, strong)UICollectionView *collectionList;

//@property (nonatomic, strong) NSMutableArray  *listArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor colorWithRed:0.83f green:0.82f blue:0.84f alpha:1.0];

    // 设置标题、导航背景
    [self setNavAndStauts];

    [self creatCollectionViewList];

}

#pragma mark  title 导航背景
- (void)setNavAndStauts{

    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    UILabel *customLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    [customLab setTextColor:[UIColor whiteColor]];
    [customLab setText:@"厨房"];
    customLab.textAlignment = NSTextAlignmentCenter;
    customLab.font = [UIFont boldSystemFontOfSize:20];
    self.navigationItem.titleView = customLab;
}

#pragma mark   创建UICollectionView
- (void)creatCollectionViewList{


    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];

    self.collectionList = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)
                                             collectionViewLayout:flowLayout];
    self.collectionList.backgroundColor = [UIColor colorWithRed:0.83f green:0.82f blue:0.84f alpha:1.0];
    self.collectionList.delegate = self;
    self.collectionList.dataSource = self;

    self.collectionList.showsVerticalScrollIndicator = NO;

    UINib *nib = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
    [self.collectionList registerNib:nib forCellWithReuseIdentifier:@"ReuseCell"];

    [self.view addSubview:self.collectionList];
}

#pragma mark UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    CollectionViewCell *scrollCell = [self.collectionList dequeueReusableCellWithReuseIdentifier:@"ReuseCell" forIndexPath:indexPath];


    return scrollCell;

}
//设置元素大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize retval = CGSizeMake(self.view.frame.size.width - 10, 200);

    return retval;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
