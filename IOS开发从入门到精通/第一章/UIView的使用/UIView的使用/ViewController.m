//
//  ViewController.m
//  UIView的使用
//
//  Created by zouyb on 2018/4/11.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *myView = [[UIView alloc] init];
    // 设置位置和大小
    myView.frame = CGRectMake(100, 100, 100, 200);
    // 设置背景颜色为紫色
    myView.backgroundColor = [UIColor redColor];
    // 设置View中心点的坐标
    myView.center = CGPointMake(0, 0);
    [self.view addSubview:myView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
