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

    
    //  1.原生视频位置：U286Z049ONFK1DM7OVM4 640x960，普通落地页，不支持dp
    //  2.图片位置：DHBE2DENY3MSAMQQ8YXA   640x960  universal link
    NSString* pid = @"U286Z049ONFK1DM7OVM4";
//
//    //SDK功能测试示例
//    //普通广告
    JyAdView* adview1 = [JyAd initNormalAdView:self.view placeid:pid adwidth:640 adheight:960 showrect:CGRectMake(0, 0, 320, 480) addelegate:ad_delegate];
    
//    //不使用浏览器打开。 默认使用浏览器打开。
//    [adview1 setOpenSafai:NO];

    //弹出广告
//    JyAdView* adview2 = [JyAd initPopAdView:self.view placeid:pid adwidth:300 adheight:250 showrect:CGRectMake(0, 350, 300, 250) addelegate:ad_delegate];
//    [adview2 setOpenSafai:NO];
//    [adview2 open];
    
    //自渲染广告
//    [JyAd initNative:pid width:640 height:960 addelegate:ad_delegate openview:self.view openrect:CGRectMake(100, 100, 300, 250)];

//    [nat show]
}
@end
