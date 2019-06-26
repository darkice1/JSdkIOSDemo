//
//  ViewController.m
//  JSdkIOSDemo
//
//  Created by xukaibin on 2019/6/24.
//  Copyright © 2019 linusflow. All rights reserved.
//

#import "ViewController.h"
#import <JyAdFramework/JyAdHeader.h>
#import "JyDemoCallBack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //SDK功能测试示例
    //回调方法
    JyDemoCallBack *cb  = [[JyDemoCallBack alloc] init];
    JyAdView* adview1 = [JyAd initNormalAdView:self.view placeid:@"QkVEMzVBRTUwODZCRjNF" left:0 top:0 width:300 height:250 callback:cb];
    JyAdView* adview2 = [JyAd initPopAdView:self.view placeid:@"QjlGQTg5QkVFNEI4N0NF" width:300 height:250 callback:nil];
    [adview2 open];
}


@end
