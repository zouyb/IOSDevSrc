//
//  ViewController.m
//  使用纯代码自定义UITAbleViewCell
//
//  Created by zouyb on 2018/4/22.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    // 设置分割线的样式
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    // 设置背景颜色
    tableView.backgroundColor = [UIColor lightGrayColor];
    // 设置分割线的颜色
    tableView.separatorColor = [UIColor redColor];
    tableView.delegate = self;
    tableView.dataSource =self;
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[MyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.backgroundColor = [UIColor purpleColor];
        UIView *bgView = [UIView new];
        bgView.backgroundColor = [UIColor greenColor];
        cell.selectedBackgroundView = bgView;
    }
    return cell;
}


@end
