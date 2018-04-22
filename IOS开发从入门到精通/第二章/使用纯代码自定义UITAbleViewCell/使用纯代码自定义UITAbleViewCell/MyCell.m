//
//  MyCell.m
//  使用纯代码自定义UITAbleViewCell
//
//  Created by zouyb on 2018/4/22.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self addSubViews];
    return self;
}

- (void)addSubViews
{
    UIImageView *showIv = [[UIImageView alloc] init];
    showIv.image = [UIImage imageNamed:@"2"];
    [self.contentView addSubview:showIv];
    
    UILabel *nameLbl = [[UILabel alloc] init];
    nameLbl.textColor = [UIColor blackColor];
    nameLbl.font = [UIFont systemFontOfSize:16];
    nameLbl.text = @"IOS学习教程";
    [self.contentView addSubview:nameLbl];
    
    UILabel *descriptionLbl = [UILabel new];
    descriptionLbl.text = @"讲解实用的IOS技术";
    descriptionLbl.textColor = [UIColor lightGrayColor];
    descriptionLbl.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:descriptionLbl];
    
    showIv.frame = CGRectMake(15, 15, 100, 50);
    nameLbl.frame = CGRectMake(CGRectGetMaxX(showIv.frame) + 10, 18, 100, 25);
    descriptionLbl.frame = CGRectMake(nameLbl.frame.origin.x, CGRectGetMaxY(nameLbl.frame) + 5, 150, 25);
}

@end
