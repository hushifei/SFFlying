//
//  LoginAndRegisterConstants.h
//  LoginAndRegister
//
//  Created by stevenhu on 15/11/22.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#ifndef LoginAndRegisterConstants_h
#define LoginAndRegisterConstants_h

//
#ifndef ___________0901_PrefixHeader_pch
#define ___________0901_PrefixHeader_pch
#import <UIKit/UIKit.h>
#import "UIBarButtonItem+CYExtension.h"
#import "UIView+CYExtenssion.h"

// Include any system framework and library headers here that should be included in all compilation units.
// You will also need to set the Prefix Header build setting of one or more of your targets to reference this file.
// 日志输出
#ifdef DEBUG // 开发阶段 -DEBUG阶段：使用Log
#define CYLog(...) NSLog(__VA_ARGS__);
#else // 发布阶段——上线阶段：移除Log
#define CYLog(...);
#endif
// 方法输出
#define CYLogFunc CYLog(@"%s",__func__);

//#define CYColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
// 颜色
#define CYARGBColor(a, r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define CYColor(r, g, b) CYARGBColor(255, (r), (g), (b))
#define CYGrayColor(v) CYColor((v), (v), (v))
#define CYCommonBgColor CYGrayColor(215)
#endif



#endif
/* LoginAndRegisterConstants_h */
