//
//  secondViewController.m
//  testProject
//
//  Created by zhangyaowu on 2017/12/16.
//  Copyright © 2017年 zhangyaowu. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor yellowColor];
    self.view.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 50, 40)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)btnClick:(UIButton *)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
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
