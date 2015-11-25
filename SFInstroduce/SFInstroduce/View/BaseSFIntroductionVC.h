//
//  BaseSFIntroductionVC.h
//  SFInstroduce
//
//  Created by admin on 15/11/25.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Masony.h"
#import "NewFeatureScrollView.h"
#import "NewFeatureImageV.h"
#import "UIApplication+Extend.h"
#import "CoreArchive.h"

extern NSString * const NewFeatureVersionKey;

@interface BaseSFIntroductionVC : UIViewController
@property (nonatomic,copy) void(^enterBlock)();
@property (nonatomic,strong) NSArray  *coverImages;
@property (nonatomic,strong) NSArray  *backGroundImages;

/*
 *  显示了版本新特性，保存版本号
 */
-(void)saveVersion;
/*
 *  是否应该显示版本新特性界面
 */
+(BOOL)canShowIntroduce;
@end
