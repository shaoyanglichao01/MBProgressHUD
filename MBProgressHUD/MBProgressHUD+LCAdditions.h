//
//  MBProgressHUD.h
//  MBProgressHUD
//
//  Created by lichao on 2017/8/14.
//  Copyright © 2017年 lichao. All rights reserved.
//

#import <MBProgressHUD.h>

@interface MBProgressHUD (LCAdditions)

/**
 *  显示成功信息提示框
 *
 *  @param status 成功信息
 *  @param view    指定显示信息的view
 */
+ (void)showSuccessWithStatus:(NSString *)status InView:(UIView *)view;
/**
 *  显示失败信息提示框
 *
 *  @param status 失败信息
 *  @param view    指定显示信息的view
 */
+ (void)showErrorWithStatus:(NSString *)status InView:(UIView *)view;
/**
 *  显示消息提示框
 *
 *  @param status 消息
 *  @param view    指定显示信息的view
 */
+ (void)showWithStatus:(NSString *)status InView:(UIView *)view;
/**
 *  显示成功信息提示框
 *
 *  @param status 成功信息
 */
+ (void)showSuccessWithStatus:(NSString *)status;
/**
 *  显示失败信息提示框
 *
 *  @param status 失败信息
 */
+ (void)showErrorWithStatus:(NSString *)status;
/**
 *  显示消息提示框
 *
 *  @param status 消息
 */
+ (void)showWithStatus:(NSString *)status;

/**
 *  显示消息提示框
 *
 */
+ (void)show;

/**
 *  显示消息提示框
 *
 */
+ (void)showInView:(UIView *)view;

/**
 *  显示文本消息
 *
 *  @param status 消息
 *  @param view    指定显示信息的view
 *
 */
+ (void)showInfoWithStatus:(NSString *)status InView:(UIView *)view;

/**
 *  隐藏提示框
 */
+ (void)dismiss;

@end
