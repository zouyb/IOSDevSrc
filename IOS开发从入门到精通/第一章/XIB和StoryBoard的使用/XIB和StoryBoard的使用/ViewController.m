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
 
**/

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *userLoginView = [[[NSBundle mainBundle] loadNibNamed:@"UserLogin" owner:nil options:nil] firstObject];
    [self.view addSubview:userLoginView];
}

@end
