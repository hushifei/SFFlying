//
//  SFIntroductionVCTypeOne.m
//  SFInstroduce
//
//  Created by admin on 15/11/25.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import "SFIntroductionVCTypeOne.h"
@interface FeatureModel : NSObject

@property (nonatomic,strong) UIImage *image;
/*
 *  初始化
 */
+(instancetype)model:(UIImage *)image;

@end

@implementation FeatureModel

/*
 *  初始化
 */
+(instancetype)model:(UIImage *)image{
    
    FeatureModel *model = [[FeatureModel alloc] init];
    
    model.image = image;
    
    return model;
}


@end



@interface SFIntroductionVCTypeOne ()
@property (nonatomic,strong) NSArray * _Nullable images;
/** 模型数组 */
@property (nonatomic,strong) NSArray *models;

/** scrollView */
@property (nonatomic,weak) NewFeatureScrollView *scrollView;

@end
@implementation SFIntroductionVCTypeOne

- (void)viewDidLoad {
    [super viewDidLoad];
    //控制器准备
    [self vcPrepare];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 *  初始化
 */
+(instancetype)createSFIntroduceVCWithModels:(NSArray<FeatureModel*>*)models enterBlock:(void(^)())enterBlock{
    
    SFIntroductionVCTypeOne *sfInstroduceVC = [[SFIntroductionVCTypeOne alloc] init];
    
    sfInstroduceVC.models = models;
    
    //记录block
    sfInstroduceVC.enterBlock =enterBlock;
    
    return sfInstroduceVC;
}

+(nullable instancetype)createSFIntroduceVCWithImages:(NSArray<UIImage*>* __nonnull)array enterBlock:(void(^_Nullable)())enterBlock {
    NSMutableArray *models=[[NSMutableArray alloc]init];
    for (UIImage *image in array) {
        FeatureModel *m = [FeatureModel model:image];
        [models addObject:m];
    }
    return  [self createSFIntroduceVCWithModels:models enterBlock:enterBlock];
    
}

/*
 *  控制器准备
 */
-(void)vcPrepare{
    
    //添加scrollView
    NewFeatureScrollView *scrollView = [[NewFeatureScrollView alloc] init];
    
    _scrollView = scrollView;
    
    //添加
    [self.view addSubview:scrollView];
    
    //添加约束
    [scrollView masViewAddConstraintMakeEqualSuperViewWithInsets:UIEdgeInsetsZero];
    
    //添加图片
    [self imageViewsPrepare];
}




/*
 *  添加图片
 */
-(void)imageViewsPrepare{
    
    [self.models enumerateObjectsUsingBlock:^(FeatureModel *model, NSUInteger idx, BOOL *stop) {
        
        NewFeatureImageV *imageV = [[NewFeatureImageV alloc] init];
        
        //设置图片
        imageV.image = model.image;
        
        //记录tag
        imageV.tag = idx;
        
        if(idx == self.models.count -1) {
            
            //开启交互
            imageV.userInteractionEnabled = YES;
            
            //添加手势
            [imageV addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureAction:)]];
        }
        
        [_scrollView addSubview:imageV];
    }];
}



-(void)gestureAction:(UITapGestureRecognizer *)tap{
    
    UIView *tapView = tap.view;
    
    //禁用
    tapView.userInteractionEnabled = NO;
    
    if(UIGestureRecognizerStateEnded == tap.state) [self dismiss];
}

-(void)dismiss{
    
    if(self.enterBlock != nil) self.enterBlock();
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
