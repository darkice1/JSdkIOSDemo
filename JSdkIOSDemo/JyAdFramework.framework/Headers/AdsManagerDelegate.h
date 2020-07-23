//
//  AdsManagerDelegate.h
//  JyAdFramework
//
//  Created by Neo on 2020/5/12.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JyNavtive.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AdsManagerDelegate <NSObject>
@required
- (void) onADClicked:(JyNative* __nullable)nativead;
- (void) onADReceive:(JyNative* __nullable)nativead;
- (void) onADExposure:(JyNative* __nullable)nativead;
- (void) onNoAd:(NSString * __nullable) error;
- (void) onClosed:(JyNative* __nullable)nativead;

//@optional

@end

NS_ASSUME_NONNULL_END
