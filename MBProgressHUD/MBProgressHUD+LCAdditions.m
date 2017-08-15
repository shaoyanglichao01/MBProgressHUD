//
//  MBProgressHUD.m
//  MBProgressHUD
//
//  Created by lichao on 2017/8/14.
//  Copyright © 2017年 lichao. All rights reserved.
//

#import "MBProgressHUD+LCAdditions.h"

static MBProgressHUD *hud = nil;
@implementation MBProgressHUD (LCAdditions)

#pragma mark 显示信息

+ (instancetype)sharedInstance:(UIView *)view {
  if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
  
  static dispatch_once_t onceToKen;
  dispatch_once(&onceToKen, ^{
    hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
    hud.contentColor = [UIColor whiteColor];
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
  });
  if (!hud.superview) {
    [view addSubview:hud];
    [hud showAnimated:YES];
  }
  return hud;
}

+ (void)show:(NSString *)text icon:(UIImage *)icon view:(UIView *)view
{
  MBProgressHUD *hud = [MBProgressHUD sharedInstance:view];
  // 快速显示一个提示信息
  hud.label.text = text;
  // 设置图片
  hud.customView = [[UIImageView alloc] initWithImage:icon];
  // 再设置模式
  hud.mode = MBProgressHUDModeCustomView;
  
  // 1.3秒之后再消失
  [hud hideAnimated:YES afterDelay:1.3];
}

#pragma mark 显示错误信息
+ (void)showErrorWithStatus:(NSString *)status InView:(UIView *)view{
  [self show:status icon:[UIImage imageNamed:@"MBProgressHUD.bundle/error@2x.png"] view:view];
}

#pragma mark 显示成功信息
+ (void)showSuccessWithStatus:(NSString *)status InView:(UIView *)view
{
  [self show:status icon:[UIImage imageNamed:@"MBProgressHUD.bundle/success@2x.png"] view:view];
}

#pragma mark 显示一些信息
+ (void)showWithStatus:(NSString *)status InView:(UIView *)view {
  MBProgressHUD *hud = [MBProgressHUD sharedInstance:view];
  hud.label.text = status;
}

+ (void)showSuccessWithStatus:(NSString *)status
{
  [self showSuccessWithStatus:status InView:nil];
}

+ (void)showErrorWithStatus:(NSString *)status
{
  [self showErrorWithStatus:status InView:nil];
}

+ (void)showWithStatus:(NSString *)status
{
  [self showWithStatus:status InView:nil];
}

+ (void)show {
  [MBProgressHUD showInView:nil];
}

+ (void)showInView:(UIView *)view {
  [MBProgressHUD sharedInstance:view];
}

+ (void)showInfoWithStatus:(NSString *)status InView:(UIView *)view {
  MBProgressHUD *hud = [MBProgressHUD sharedInstance:view];
  hud.mode = MBProgressHUDModeText;
  hud.label.text = status;
  // Move to bottm center.
  //  hud.offset = CGPointMake(0.f, MBProgressMaxOffset);
  [hud hideAnimated:YES afterDelay:2.f];
}

+ (void)dismiss
{
  if (hud) {
    [hud hideAnimated:YES];
  }
}

@end
