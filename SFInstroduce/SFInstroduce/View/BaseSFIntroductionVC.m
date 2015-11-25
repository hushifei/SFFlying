//
//  BaseSFIntroductionVC.m
//  SFInstroduce
//
//  Created by admin on 15/11/25.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import "BaseSFIntroductionVC.h"
NSString *const NewFeatureVersionKey = @"NewFeatureVersionKey";

@interface BaseSFIntroductionVC ()

@end

@implementation BaseSFIntroductionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //显示了版本新特性，保存版本号
    [self saveVersion];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 */
 /*
 *  显示了版本新特性，保存版本号
 */

-(void)saveVersion{
    
    //系统直接读取的版本号
    NSString *versionValueStringForSystemNow=[UIApplication sharedApplication].version;
    
    //保存版本号
    [CoreArchive setStr:versionValueStringForSystemNow key:NewFeatureVersionKey];
}


/*
 *  是否应该显示版本新特性页面
 */
+(BOOL)canShowIntroduce{
    
    //系统直接读取的版本号
    NSString *versionValueStringForSystemNow=[UIApplication sharedApplication].version;
    
    //读取本地版本号
    NSString *versionLocal = [CoreArchive strForKey:NewFeatureVersionKey];
    
    if(versionLocal!=nil && [versionValueStringForSystemNow isEqualToString:versionLocal]){//说明有本地版本记录，且和当前系统版本一致
        
        return NO;
        
    }else{//无本地版本记录或本地版本记录与当前系统版本不一致
        
        //保存
        [CoreArchive setStr:versionValueStringForSystemNow key:NewFeatureVersionKey];
        
        return YES;
    }
}


@end
