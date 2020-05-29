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
    
    NSString* pid = @"RMVWF49JN7XS3DYAEIVV";
//
//    //SDK功能测试示例
//    //普通广告
////    1080x1680
    JyAdView* adview1 = [JyAd initNormalAdView:self.view placeid:pid adwidth:1080 adheight:1680 showrect:CGRectMake(0, 0, 300, 250) addelegate:ad_delegate];
    
//    //不使用浏览器打开。 默认使用浏览器打开。
//    [adview1 setOpenSafai:NO];

    //弹出广告
//    JyAdView* adview2 = [JyAd initPopAdView:self.view placeid:pid adwidth:300 adheight:250 showrect:CGRectMake(0, 350, 300, 250) addelegate:ad_delegate];
//    [adview2 setOpenSafai:NO];
//    [adview2 open];
    
    //自渲染广告
    [JyAd initNative:pid width:1080 height:1680 addelegate:ad_delegate openview:self.view openrect:CGRectMake(100, 100, 300, 250)];

//    [nat show]
}
@end
