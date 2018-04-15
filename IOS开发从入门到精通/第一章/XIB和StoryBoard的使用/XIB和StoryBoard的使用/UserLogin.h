//
//  UserLogin.h
//  XIB和StoryBoard的使用
//
//  Created by zouyb on 2018/4/15.
//  Copyright © 2018年 zouyb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserLogin : UIView
@property (weak, nonatomic) IBOutlet UITextField *usernameTf;
@property (weak, nonatomic) IBOutlet UITextField *passwordTf;

- (IBAction)login:(id)sender;


@end
