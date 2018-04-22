//
//  ViewController.m
//  APP启动引导页制作
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
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    CGSize viewSize = self.view.frame.size;
    
    for (int i = 0; i<3; i++) {
        NSString *imageName = [NSString stringWithFormat:@"img%d", i];
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:imageName];
        
        imageView.frame = CGRectMake(i * viewSize.width, 0, viewSize.width, viewSize.height);
        [scrollView addSubview:imageView];
    }
    
    scrollView.contentSize = CGSizeMake(3 * viewSize.width, viewSize.height);
    scrollView.pagingEnabled = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
