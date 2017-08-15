//
//  RootViewController.m
//  MBProgressHUD
//
//  Created by lichao on 2017/8/14.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import "RootViewController.h"
#import "MBProgressHUD+LCAdditions.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"完成"
                                                                         style:UIBarButtonItemStylePlain
                                                                        target:self
                                                                        action:@selector(backViewController)];
  self.navigationItem.rightBarButtonItem = rightBarButtonItem;
  
  
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  button.frame = CGRectMake(100, 100, 80, 40);
  button.backgroundColor = [UIColor greenColor];
  [button addTarget:self action:@selector(buttonOnTapped:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button];
  
  
}

- (void)buttonOnTapped:(id)sender {
//  [MBProgressHUD showMessage:@"显示成功" InView:self.view];
//  [MBProgressHUD showWithStatus:@"显示成功" InView:self.view];
//    [MBProgressHUD showSuccess:@"显示成功"];
  //  [MBProgressHUD showSuccess:@"显示成功" toView:self.view];
//    [MBProgressHUD showError:@"显示失败"];
  //  [MBProgressHUD showMessage:nil];
  //  [MBProgressHUD show];
//  [MBProgressHUD showTitle:@"显示成功" InView:self.view];
//  [MBProgressHUD showInfoWithStatus:@"显示成功" InView:self.view];
//  [MBProgressHUD showInView:self.view];
//  [MBProgressHUD showWithStatus:@"显示成功" InView:self.view];
  [MBProgressHUD showSuccessWithStatus:@"显示成功"];
//  [MBProgressHUD showInfoWithStatus:@"显示成功" InView:nil];
}

- (void)backViewController {
  NSLog(@"...........");
//  [MBProgressHUD showMessage:@"aaaaa"];
//  [self performSelector:@selector(hideMBProgress) withObject:nil afterDelay:5];
  [MBProgressHUD dismiss];
}

- (void)hideMBProgress {
  [MBProgressHUD dismiss];
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

@end
