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
        id<AdsManagerDelegate> ad_delegate;
    
}

-(id) init:(NSString*)placeid adtype:(int)adtype adwidth:(int)adwidth adheight:(int)adheight  showwidth:(int)showwidth  showheight:(int)showheight  addelegate:(id<AdsManagerDelegate>)addelegate;


-(void) loadAd;

-(void) open;
-(void) close;

@end
