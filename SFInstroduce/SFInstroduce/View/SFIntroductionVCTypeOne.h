//
//  SFIntroductionVCTypeOne.h
//  SFInstroduce
//
//  Created by admin on 15/11/25.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import "BaseSFIntroductionVC.h"
@interface SFIntroductionVCTypeOne : BaseSFIntroductionVC
/*
 *  初始化
 */

+(nullable instancetype)createSFIntroduceVCWithImages:(NSArray<UIImage*>* __nonnull)array enterBlock:(void(^_Nullable)())enterBlock;
@end
