//
//  LGIntroductionViewController.h
//
//  Created by square on 15/1/21.
//  Copyright (c) 2015年 square. All rights reserved.
//

#import "BaseSFIntroductionVC.h"

typedef void (^DidSelectedEnter)();

@interface SFIntroductionVCTypeTwo : BaseSFIntroductionVC

@property (nonatomic, strong) UIScrollView *pagingScrollView;
@property (nonatomic, strong) UIButton *enterButton;

@property (nonatomic, copy) DidSelectedEnter didSelectedEnter;

/**
 @[@"image1", @"image2"]
 */
@property (nonatomic, strong) NSArray *backgroundImageNames;

/**
 @[@"coverImage1", @"coverImage2"]
 */
@property (nonatomic, strong) NSArray *coverImageNames;


+( UIViewController*)createWithWithCoverImages:(NSArray*)coverImages backgroundImages:(NSArray* )bgImages button:(UIButton*)button enterBlock:(void(^)())enterBlock;

@end
