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
    
    //SDK功能测试示例
    //普通广告
    [JyAd initNormalAdView:self.view placeid:@"QjlGQTg5QkVFNEI4N0NF" left:0 top:0 width:300 height:250 addelegate:ad_delegate];
    //弹出广告
//    JyAdView* adview2 = [JyAd initPopAdView:self.view placeid:@"QjlGQTg5QkVFNEI4N0NF" width:300 height:250 addelegate:ad_delegate];
//    [adview2 open];
    
    //自渲染广告
//    JyNative* nat = [JyAd initNative:@"QjlGQTg5QkVFNEI4N0NF" width:399 height:250 addelegate:ad_delegate];
//    [nat show]
}


@end
