//
//  SellerInfoCell.m
//  JHCellConfigDemo
//
//  Created by JC_Hu on 15/3/9.
//  Copyright (c) 2015年 JCHu. All rights reserved.
//

#import "SellerInfoCell.h"

@implementation SellerInfoCell

#pragma mark - 懒加载
// 注意，使用懒加载时，调用属性最好用self.,因为第一次调用一定要用self.
- (UIImageView *)mainImageView
{
    if (!_mainImageView) {
        _mainImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:_mainImageView];
    }
    return _mainImageView;
}

#pragma mark - 布局
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.mainImageView.frame = CGRectMake(0, 0, kWidthOfScreen, kHeightOfSellerInfo);
    
}

#pragma mark - 显示数据
- (void)showInfo:(Model *)model
{
    self.mainImageView.image = [UIImage imageNamed:model.imageName4];
    
    [self layoutSubviews];
}

@end
