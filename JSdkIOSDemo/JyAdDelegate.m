//
//  JyAdDelegate.m
//  JSdkIOSDemo
//
//  Created by Neo on 2020/5/13.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JyAdDelegate.h"

@implementation JyAdDelegate
- (void) onADClicked:(JyNative* __nullable)nativead
{
    //广告点击时被调用
    NSLog(@"onADClicked");
    
}
- (void) onADReceive:(JyNative* __nullable)nativead
{
    //收到广告返回
    NSLog(@"onADReceive");
    //自渲染可以之后执行展示与点击
    [nativead show];
    [nativead click];
}
- (void) onADExposure:(JyNative* __nullable)nativead
{
    //广告被展示
    NSLog(@"onADExposure");

}
- (void) onNoAd:(NSString * __nullable) error
{
    NSLog(@"onNoAd:%@",error);

}
- (void) close:(JyNative* __nullable)nativead
{
    //广告被关闭
    NSLog(@"close");
}

@end
