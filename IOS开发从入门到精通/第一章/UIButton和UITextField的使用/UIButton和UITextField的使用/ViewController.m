//
//  ViewController.m
//  UIButton和UITextField的使用
//
//  Created by zouyb on 2018/4/15.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextField *_tf;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self btnUse];
    [self textfieldUse];
}

- (void)textfieldUse
{
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 200, 30)];
    tf.placeholder = @"请输入用户名";
    tf.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:tf];
    _tf = tf;
}

- (void)btnUse
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:@"播放" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = [UIColor grayColor].CGColor;
    btn.layer.masksToBounds = YES;
    btn.frame = CGRectMake(100, 200, 150, 40);
    [btn addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)play
{
    NSLog(@"点击了播放");
    NSString *tfStr = _tf.text;
    NSLog(@"用户输入了：%@", tfStr);
}

@end
