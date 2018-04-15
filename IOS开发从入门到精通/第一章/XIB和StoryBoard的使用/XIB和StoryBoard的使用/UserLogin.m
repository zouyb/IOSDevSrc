//
//  UserLogin.m
//  XIB和StoryBoard的使用
//
//  Created by zouyb on 2018/4/15.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import "UserLogin.h"

@implementation UserLogin

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)login:(id)sender {
    NSString *username = self.usernameTf.text;
    NSString *password = self.passwordTf.text;
    NSLog(@"用户名=%@,密码=%@", username, password);
}
@end
