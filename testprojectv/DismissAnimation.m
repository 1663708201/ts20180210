//
//  DismissAnimation.m
//  testProject
//
//  Created by zhangyaowu on 2017/12/16.
//  Copyright © 2017年 zhangyaowu. All rights reserved.
//

#import "DismissAnimation.h"

@implementation DismissAnimation
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 1.0f;
}
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
//    UIViewController *desController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *srcController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
//    [[transitionContext containerView] addSubview:desController.view];
//    desController.view.alpha = 0.0;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext]
                     animations:^{
                         srcController.view.transform = CGAffineTransformMakeTranslation(srcController.view.bounds.size.width, 0.0);
//                         desController.view.alpha = 1.0;
                     }
                     completion:^(BOOL finished) {
                         srcController.view.transform = CGAffineTransformIdentity;
                         [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                     }];
    
//    UIViewController * fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
//    UIView *fromView = fromVC.view;
//    //执行的dismiss动画
//    [UIView animateWithDuration:1.1 delay:0 usingSpringWithDamping:1.0 initialSpringVelocity:5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        //如果在debug中打印如下结果，是因为：动画时间是1(具体原因不明，经多次调试只要动画时间不是1就OK)
//        //stiffness must be greater than 0. 刚度必须大于0;
//        //damping must be greater than or equal to 0. 阻尼必须大于或等于0;
//        CATransform3D fromViewTransform = fromView.layer.transform;
//        fromViewTransform = CATransform3DScale(fromViewTransform, 1.5, 1.5, 1);
//
//        fromView.layer.transform = fromViewTransform;
//
//        fromView .alpha = 0;
//
//    } completion:^(BOOL finished) {
//        //
//        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
//    }];
}
@end
