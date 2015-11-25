//
//  LoginAndRegister.h
//  LoginAndRegister
//
//  Created by stevenhu on 15/11/22.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFloginRegisterViewController.h"
//! Project version number for LoginAndRegister.
FOUNDATION_EXPORT double LoginAndRegisterVersionNumber;

//! Project version string for LoginAndRegister.
FOUNDATION_EXPORT const unsigned char LoginAndRegisterVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <LoginAndRegister/PublicHeader.h>

typedef NS_ENUM(NSUInteger,startType) {
    startType_Launch=0,
    startType_InApp
};

@interface SFLoginAndRegister :NSObject
@property(nonatomic,strong)SFloginRegisterViewController* _Nullable loginRegisterViewController;
+ (nullable SFloginRegisterViewController*)createLoginAndRegisterViewControllerWithType:(startType)type completed:(void(^_Nullable)(NSDictionary* _Nullable dict ))completed;
- (void)dismissLoginAndRegisterViewController:(BOOL)animated completion:(void (^ _Nullable)(void))completion;
@end

