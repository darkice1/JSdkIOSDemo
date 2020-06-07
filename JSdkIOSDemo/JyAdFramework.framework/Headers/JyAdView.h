//
//  JyAdView.h
//  JyAd
//
//  Created by Neo on 14/12/9.
//  Copyright (c) 2014年 wisemedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "AdsManagerDelegate.h"

@interface JyAdView : WKWebView <WKNavigationDelegate,WKUIDelegate,WKScriptMessageHandler>
{
    @private
        NSString *placeid;
        int adtype;
        int width;
        int height;
        id<AdsManagerDelegate> ad_delegate;

        UIView* superview ;
        UIActivityIndicatorView *activityIndicator;
}


-(id) init:(UIView*)_superview  placeid:(NSString*)_placeid adtype:(int)adtype adwidth:(int)adwidth adheight:(int)adheight showrect:(CGRect)showrect addelegate:(id<AdsManagerDelegate>)addelegate;


-(void) loadAd;

-(void) setOpenSafai:(BOOL)open;

-(void) open;
-(void) close;

@end
