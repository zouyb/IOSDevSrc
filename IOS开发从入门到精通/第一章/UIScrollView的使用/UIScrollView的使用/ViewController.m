//
//  ViewController.m
//  UIScrollView的使用
//
//  Created by zouyb on 2018/4/18.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"meizi.jpg"]];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"meizi2.jpg"]];
    
    
    CGFloat image1Width = imageView1.image.size.width;
    CGFloat image2Width = imageView2.image.size.width;
    
    
    
    CGFloat scrollWidth = image1Width >= image1Width ? image1Width : image2Width;
    
    imageView2.frame = CGRectMake(0, imageView1.image.size.height, image1Width, imageView2.image.size.height);
    
    CGSize contentSize = CGSizeMake(scrollWidth, imageView1.image.size.height +  imageView2.image.size.height);
    

    [scrollView addSubview:imageView1];
    [scrollView addSubview:imageView2];
    
    scrollView.contentSize = contentSize;
    scrollView.showsVerticalScrollIndicator = NO;
    
    [self.view addSubview:scrollView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
