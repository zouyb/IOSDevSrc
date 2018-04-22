//
//  ViewController.m
//  UITableView的使用
//
//  Created by zouyb on 2018/4/22.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

// UITableView代理方法的执行顺序和Cell的重用机制

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    tableview.delegate = self;
    tableview.dataSource = self;
    
    [self.view addSubview:tableview];
    
}

#pragma mark tableview delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

#pragma mark tableview datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 列表的每一行都用一个UITableViewCell来表示
    
    static NSString *cellId = @"cellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld行", indexPath.row];
    NSLog(@"cell:%p", cell);
    return cell;
}


@end
