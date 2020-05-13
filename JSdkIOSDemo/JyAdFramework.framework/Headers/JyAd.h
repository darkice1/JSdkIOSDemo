//
//  JyAd.h
//  JyAd
//
//  Created by Neo on 14/12/9.
//  Copyright (c) 2014年 wisemedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JyAdView.h"
#import "JyNavtive.h"


@interface JyAd : NSObject
+(JyAdView*)initNormalAdView:(UIView*)superview placeid:(NSString*)placeid left:(int)left top:(int)top width:(int)width  height:(int)height addelegate:(id<AdsManagerDelegate>)addelegate;

+(JyAdView*)initPopAdView:(UIView*)superview placeid:(NSString*)placeid width:(int)width  height:(int)height addelegate:(id<AdsManagerDelegate>)addelegate;

+(JyNative*)initNative:(NSString*)placeid width:(int)width  height:(int)height addelegate:(id<AdsManagerDelegate>)addelegate;

@end
