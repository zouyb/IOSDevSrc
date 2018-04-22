//
//  ViewController.m
//  使用XIB自定义UITableViewCell
//
//  Created by zouyb on 2018/4/22.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

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
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"MyCell";
    MyCell *myCell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (myCell == nil) {
        myCell = [[[NSBundle mainBundle] loadNibNamed:@"MyCell" owner:nil options:nil] firstObject];
    }
    return myCell;
}



@end
