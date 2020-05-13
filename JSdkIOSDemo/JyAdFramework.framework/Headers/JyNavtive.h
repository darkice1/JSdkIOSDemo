//
//  JyCallBack.h
//  JyAdTest
//
//  Created by Neo on 14/12/17.
//  Copyright (c) 2014年 wisemedia. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AdsManagerDelegate;

@interface JyNative : NSObject
{
    @private
    NSString *placeid;
    int width;
    int height;
    id<AdsManagerDelegate> ad_delegate;
    NSDictionary* detail;
}

//-(id) init:(UIView*)superview placeid:(NSString*)placeid adtype:(int)adtype width:(int)width height:(int)height;

-(id) init:(NSString*)_placeid width:(int)_width height:(int)_height ad_delegate:(id<AdsManagerDelegate>) _ad_delegate;

-(void)show;
-(void)click;
-(void)close;
-(NSDictionary*)getDtail;
-(NSString*)getError;

@end
