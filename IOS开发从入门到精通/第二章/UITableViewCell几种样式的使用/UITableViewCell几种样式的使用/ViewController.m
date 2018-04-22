//
//  ViewController.m
//  UITableViewCell几种样式的使用
//
//  Created by zouyb on 2018/4/22.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellId];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    cell.imageView.image = [UIImage imageNamed:@"babymusic-58x58"];
    cell.textLabel.text = [NSString stringWithFormat:@"Cell%ld", indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"子标题：%ld", indexPath.row];
    return cell;
}

@end
