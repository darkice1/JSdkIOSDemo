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
#import <UIKit/UIKit.h>


@interface JyAd : NSObject
+(JyAdView*)initNormalAdView:(UIView*)_superview  placeid:(NSString*)placeid adwidth:(int)adwidth  adheight:(int)adheight showrect:(CGRect)howrect addelegate:(id<AdsManagerDelegate>)addelegate;

+(JyAdView*)initPopAdView:(UIView*)_superview placeid:(NSString*)placeid adwidth:(int)adwidth  adheight:(int)adheight showrect:(CGRect)showrect addelegate:(id<AdsManagerDelegate>)addelegate;

+(JyNative*)initNative:(NSString*)placeid width:(int)width  height:(int)height addelegate:(id<AdsManagerDelegate>)addelegate;

@end
