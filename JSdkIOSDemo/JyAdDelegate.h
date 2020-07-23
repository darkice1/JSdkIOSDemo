//
//  JyAdDelegate.m
//  JSdkIOSDemo
//
//  Created by Neo on 2020/5/13.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JyAdFramework/AdsManagerDelegate.h>


@interface JyAdDelegate : NSObject<AdsManagerDelegate>

- (void) onADClicked:(JyNative* __nullable)nativead;
- (void) onADReceive:(JyNative* __nullable)nativead;
- (void) onADExposure:(JyNative* __nullable)nativead;
- (void) onNoAd:(NSString * __nullable) error;
- (void) onClosed:(JyNative *__nullable)nativead;

@end
