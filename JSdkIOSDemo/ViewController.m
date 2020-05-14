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
    
    NSString* pid = @"QjlGQTg5QkVFNEI4N0NF";

    //SDK功能测试示例
    //普通广告
     JyAdView* adview1 =  [JyAd initNormalAdView:pid adwidth:300 adheight:250 showwidth:300 showheight:250 addelegate:ad_delegate];
    [self.view addSubview:adview1];
    
//    //弹出广告
//    JyAdView* adview2 = [JyAd initPopAdView:pid adwidth:300 adheight:250 showwidth:300 showheight:250 addelegate:ad_delegate];
//    [adview2 open];
//    [self.view addSubview:adview2];
    
    //自渲染广告
//    JyNative* nat = [JyAd initNative:@"QjlGQTg5QkVFNEI4N0NF" width:399 height:250 addelegate:ad_delegate];
//    [nat show]
}


@end
