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
    [JyAd initNormalAdView:self.view placeid:pid adwidth:300 adheight:250 showrect:CGRectMake(0, 0, 300, 250) addelegate:ad_delegate];

    //弹出广告
//    JyAdView* adview2 = [JyAd initPopAdView:self.view placeid:pid adwidth:300 adheight:250 showrect:CGRectMake(0, 350, 300, 250) addelegate:ad_delegate];
//    [adview2 open];
    
    //自渲染广告
//    JyNative* nat = [JyAd initNative:pid width:300 height:250 addelegate:ad_delegate];
//    [nat show]
}
@end
