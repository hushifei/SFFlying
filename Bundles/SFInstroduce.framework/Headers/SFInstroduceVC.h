//
//  SFInstroduce.h
//  SFInstroduce
//
//  Created by stevenhu on 15/11/19.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import <UIKit/UIKit.h>
//! Project version number for SFInstroduce.
FOUNDATION_EXPORT double SFInstroduceVersionNumber;

//! Project version string for SFInstroduce.
FOUNDATION_EXPORT const unsigned char SFInstroduceVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <SFInstroduce/PublicHeader.h>


@interface SFInstroduceVC : NSObject

/*
 *  初始化
 */

+(nullable UIViewController*)createWithWithImages:(NSArray *_Nullable)images bgImages:(NSArray<UIImage*>* _Nullable)bgImages button:(UIButton* _Nullable)button enterBlock:(void(^_Nullable)())enterBlock;

@end
