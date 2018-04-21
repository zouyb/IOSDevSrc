//
//  ViewController.m
//  XIB和StoryBoard的使用
//
//  Created by zouyb on 2018/4/15.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

/**
 IOS开发界面的两种方式：
 1、纯代码开发
 2、XIB和Storyboard方式
 
 打开：Xib关联的类，快捷键为：Cmd+Option+Enter
 返回：Cmd+Enter
 
 课程所有项目源代码下载地址：https://github.com/zouyb/IOSDevSrc
 
**/

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self storyboardUse];
}

- (void)storyboardUse
{
    // storyboard 故事版，它是很多个界面的集合，同时可以设置各个界面之间的跳转和关联关系。
    
    // 初始化一个storyboard文件
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"UserManager" bundle:nil];
    UIViewController *loginVc = [storyboard instantiateViewControllerWithIdentifier:@"login"];
    [self.view addSubview:loginVc.view];
}

- (void)xibUse
{
    UIView *userLoginView = [[[NSBundle mainBundle] loadNibNamed:@"UserLogin" owner:nil options:nil] firstObject];
    [self.view addSubview:userLoginView];
}

@end
