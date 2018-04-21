//
//  ViewController.m
//  启动引导页
//
//  Created by zouyb on 2018/4/21.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *contentView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:contentView];
    contentView.pagingEnabled = YES;
    
    CGSize viewSize = self.view.frame.size;
    contentView.contentSize = CGSizeMake(viewSize.width * 3, viewSize.height);
    
    for (int i=0; i<3; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        NSString *imageName = [NSString stringWithFormat:@"img%d.png", i];
        imageView.image = [UIImage imageNamed:imageName];
        
        imageView.frame = CGRectMake(i * viewSize.width, 0, viewSize.width, viewSize.height);
        [contentView addSubview:imageView];
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
