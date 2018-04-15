//
//  ViewController.m
//  UILabel的使用
//
//  Created by zouyb on 2018/4/15.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self imageviewUse];
}

- (void)imageviewUse
{
    UIImageView *mmImageView = [[UIImageView alloc] init];
    mmImageView.image = [UIImage imageNamed:@"tuzi.jpeg"];
    mmImageView.frame = CGRectMake(50, 100, 300, 200);
    mmImageView.layer.cornerRadius = 15;
    mmImageView.layer.borderColor = [UIColor redColor].CGColor;
    mmImageView.layer.borderWidth = 2;
    mmImageView.layer.masksToBounds = YES;
    
    [self.view addSubview:mmImageView];
}

- (void)labelUse
{
    UILabel *myLbl = [[UILabel alloc] init];
    myLbl.font = [UIFont systemFontOfSize:20];
    myLbl.textColor = [UIColor redColor];
    myLbl.text = @"我喜欢学习IOS,我喜欢学习IOS,我喜欢学习IOS,我喜欢学习IOS,";
    myLbl.numberOfLines = 5;
    myLbl.frame = CGRectMake(100, 100, 200, 150);
    [self.view addSubview:myLbl];
}

@end
