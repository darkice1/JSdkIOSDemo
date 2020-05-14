//
//  ViewController.m
//  JSdkIOSDemo
//
//  Created by xukaibin on 2019/6/24.
//  Copyright © 2019 linusflow. All rights reserved.
//

#import "ViewController.h"
#import <JyAdFramework/JyAdHeader.h>
#import "JyAdDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //回掉协议
    JyAdDelegate* ad_delegate = [[JyAdDelegate alloc]init];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 300, 200)];
    [self.view addSubview:view];
    
    
    //SDK功能测试示例
    //普通广告
    [JyAd initNormalAdView:view placeid:@"FPN2XNXCTILTYYZBI0NO" width:480 height:320 addelegate:ad_delegate];
    
    //弹出广告
    UIView *popview = [[UIView alloc]initWithFrame:CGRectMake(20, 250, 300, 200)];
    [self.view addSubview:popview];
    JyAdView* adview2 = [JyAd initPopAdView:popview placeid:@"FPN2XNXCTILTYYZBI0NO" width:480 height:320 addelegate:ad_delegate];
//    [adview2 setContentMode:UIViewContentModeScaleAspectFit];
//    adview2.transform =CGAffineTransformMakeScale(0.5, 0.5);
//    adview2.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [adview2 open];
    
    //自渲染广告
//    JyNative* nat = [JyAd initNative:@"QjlGQTg5QkVFNEI4N0NF" width:399 height:250 addelegate:ad_delegate];
//    [nat show]
}


@end
