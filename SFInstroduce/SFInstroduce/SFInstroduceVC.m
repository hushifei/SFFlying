//
//  SFInstroduceVC.m
//  SFInstroduce
//
//  Created by stevenhu on 15/11/19.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import "SFInstroduceVC.h"
#import "SFIntroductionVCTypeOne.h"
#import "SFIntroductionVCTypeTwo.h"
@implementation SFInstroduceVC

+(nullable UIViewController*)createWithWithImages:(NSArray *_Nullable)images bgImages:(NSArray<UIImage*>* _Nullable)bgImages button:(UIButton* _Nullable)button enterBlock:(void(^_Nullable)())enterBlock {
//    if (![SFIntroductionVCTypeOne canShowIntroduce]) return nil;
    BOOL isUIimageType=[[images firstObject]isKindOfClass:[UIImage class]];
    if (images .count >0 && !isUIimageType) {
      return [SFIntroductionVCTypeTwo createWithWithCoverImages:images backgroundImages:bgImages button:button enterBlock:enterBlock];
    }
    
    if (!isUIimageType) {
        return [SFIntroductionVCTypeOne createSFIntroduceVCWithImages:bgImages enterBlock:enterBlock];
    } else {
        return [SFIntroductionVCTypeOne createSFIntroduceVCWithImages:images enterBlock:enterBlock];

    }
    return nil;

}
@end
