//
//  ViewController.m
//  UITableView二级列表的实现
//
//  Created by zouyb on 2018/4/22.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *_provinces;
    NSArray *_citys;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createData];
    UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
}

- (void)createData
{
    _provinces = @[@"广东省", @"湖南省", @"江西省"];
    NSArray *arr1 = @[@"广州市", @"佛山市", @"珠海市"];
    NSArray *arr2 = @[@"长沙市", @"衡阳市", @"娄底市"];
    NSArray *arr3 = @[@"萍乡市", @"九江市"];
    _citys = @[arr1, arr2, arr3];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _provinces.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *arr = _citys[section];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    NSArray *citys = _citys[indexPath.section];
    NSString *name = citys[indexPath.row];
    cell.textLabel.text = name;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 35;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *groupNameLbl = [UILabel new];
    groupNameLbl.text = _provinces[section];
    groupNameLbl.backgroundColor = [UIColor lightGrayColor];
    return groupNameLbl;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *arr = _citys[indexPath.section];
    NSString *name = arr[indexPath.row];
    NSLog(@"点击了：%@", name);
}

@end
