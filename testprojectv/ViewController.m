//
//  ViewController.m
//  testProject
//
//  Created by zhangyaowu on 2017/12/16.
//  Copyright © 2017年 zhangyaowu. All rights reserved.
//

#import "ViewController.h"
//#import "mainViewController.h"
#import "secondViewController.h"
//#import "PresentTransition.h"
#import "DismissAnimation.h"
@interface ViewController ()<UIViewControllerTransitioningDelegate>{
    UIWindow *window;
}

@end

@implementation ViewController
- (int)getNum{
    return 200;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.transitioningDelegate = self;
    
    self.view.backgroundColor = [UIColor redColor];
    
    //sdfasdf
    //sfasdf
    
    
    
        /** 加载window */
//    window = [[UIWindow alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width - 50, [UIScreen mainScreen].bounds.size.height)];
//    //window.windowLevel =  UIWindowLevelStatusBar + 1;//此设置遮蔽状态栏
//    window.hidden = NO;
//    window.backgroundColor = [UIColor grayColor];
//
//    secondViewController * rvc = [[secondViewController alloc] init];
////    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:rvc];
//    window.rootViewController = rvc;
    // Do any additional setup after loading the view, typically from a nib.
}

// present动画
//- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
//    return [[PresentTransition alloc] init];
//}

//dismiss动画协议
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
//    return nil;
    return [DismissAnimation new];
}

- (IBAction)click:(id)sender {
//    //设置视图偏移
//    [UIView animateWithDuration:.3 animations:^{
//        CGRect rect = window.frame;
//        rect.origin.x -= (100);
//        window.frame = CGRectMake(50, rect.origin.y, rect.size.width, rect.size.height);
//    }];
    
    secondViewController * rvc = [[secondViewController alloc] init];
    rvc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
//    rvc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
     rvc.transitioningDelegate = self;
//    [self.navigationController pushViewController:rvc animated:YES];
    [self presentViewController:rvc animated:YES completion:nil];
    
    //    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:rvc];
//    window.rootViewController = rvc;
    
    
//    mainViewController * mainScreeningVC = [mainViewController new];
//    self.definesPresentationContext = YES;
//    mainScreeningVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
//    [self.navigationController pushViewController:mainScreeningVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
