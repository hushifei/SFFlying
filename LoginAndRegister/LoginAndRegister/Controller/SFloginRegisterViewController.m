//
//  SFloginRegisterViewController.m
//  SFFlying
//
//  Created by stevenhu on 15/11/22.
//  Copyright © 2015年 stevenhu. All rights reserved.
//

#import "SFloginRegisterViewController.h"
#import "UIView+SFExtenssion.h"
typedef void (^Completion)(NSDictionary * dict);

@interface SFloginRegisterViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leadingSpace;
@property(nonatomic,strong)Completion completed;

@end

@implementation SFloginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //    self.loginButton.layer.cornerRadius = 5;
    //    self.loginButton.layer.masksToBounds = YES;
    //    [self.loginButton setValue:@5 forKeyPath:@"layer.cornerRadius"];
    //    [self.loginButton setValue:@YES forKeyPath:@"layer.masksToBounds"];
    //    self.loginButton.clipsToBounds = YES;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil withBlock:(void (^)(NSDictionary * dict))completed {
        if (self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
            _completed=completed;
        }
    return self;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (IBAction)close
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (IBAction)loginOrRegister:(UIButton *)button
{
    // 修改约束
    if (self.leadingSpace.constant == 0) {
        self.leadingSpace.constant = - self.view.width;
//        [button setTitle:@"已有账号？" forState:UIControlStateNormal];
        button.selected = YES;
    }else
    {
        self.leadingSpace.constant = 0;
//        [button setTitle:@"注册账号" forState:UIControlStateNormal];
        button.selected = NO;
    }
    
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)Login:(id)sender {
    if (_completed) {
        _completed(nil);
    }
}


@end
