//
//  JyAd.h
//  JyAd
//
//  Created by Neo on 14/12/9.
//  Copyright (c) 2014年 wisemedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JyAdView.h"
#import "JyCallBack.h"

@interface JyAd : NSObject
+(JyAdView*)initNormalAdView:(UIView*)superview placeid:(NSString*)placeid left:(int)left top:(int)top width:(int)width  height:(int)height callback:(JyCallBack*)callback;

+(JyAdView*)initPopAdView:(UIView*)superview placeid:(NSString*)placeid width:(int)width  height:(int)height callback:(JyCallBack*)callback;

@end
