//
//  LoginAndRegister.m
//  LoginAndRegister
//
//  Created by stevenhu on 15/11/22.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import "SFLoginAndRegister.h"


@implementation SFLoginAndRegister

+ (nullable SFloginRegisterViewController*)createLoginAndRegisterViewControllerWithType:(startType)type completed:(void (^)(NSDictionary * _Nullable))completed {
    SFLoginAndRegister *loginAndRe=[[self alloc]init];
    if (type==startType_Launch) {
        loginAndRe.loginRegisterViewController=[[SFloginRegisterViewController alloc]initWithNibName:@"SFloginRegisterViewController" bundle:[NSBundle bundleForClass:[self class]]withBlock:completed];
    } else if (type==startType_InApp) {
        loginAndRe.loginRegisterViewController=[[SFloginRegisterViewController alloc]initWithNibName:@"SFloginRegisterViewController" bundle:[NSBundle bundleForClass:[self class]]withBlock:completed];
    }
    return loginAndRe.loginRegisterViewController;

}

- (void)dismissLoginAndRegisterViewController:(BOOL)animated completion:(void (^ _Nullable)(void))completion {
    [_loginRegisterViewController dismissViewControllerAnimated:animated completion:completion];
}


@end
