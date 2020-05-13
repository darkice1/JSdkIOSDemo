//
//  JyAdView.h
//  JyAd
//
//  Created by Neo on 14/12/9.
//  Copyright (c) 2014年 wisemedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdsManagerDelegate.h"

@interface JyAdView : UIWebView <UIWebViewDelegate>
{
    @private
        NSString *placeid;
        int adtype;
        int width;
        int height;
        UIView *superview;
        id<AdsManagerDelegate> ad_delegate;
    
}

-(id) init:(UIView*)superview placeid:(NSString*)placeid adtype:(int)adtype width:(int)width height:(int)height;

-(id) init:(UIView*)superview placeid:(NSString*)placeid adtype:(int)adtype left:(int)left top:(int)top  width:(int)width height:(int)height addelegate:(id<AdsManagerDelegate>)addelegate;

-(void) loadAd;

-(void) open;
-(void) close;

@end
