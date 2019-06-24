//
//  ViewController.m
//  JSdkIOSDemo
//
//  Created by xukaibin on 2019/6/24.
//  Copyright © 2019 linusflow. All rights reserved.
//

#import "ViewController.h"
#import <JyAdFramework/JyAdHeader.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //老版SDK功能测试示例
    JyAdView* adview1 = [JyAd initNormalAdView:self.view placeid:@"QkVEMzVBRTUwODZCRjNF" left:0 top:0 width:300 height:250 callback:nil];
    JyAdView* adview2 = [JyAd initPopAdView:self.view placeid:@"QjlGQTg5QkVFNEI4N0NF" width:300 height:250 callback:nil];
    [adview2 open];
}


@end
