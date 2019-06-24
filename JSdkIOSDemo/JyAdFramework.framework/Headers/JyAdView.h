//
//  JyAdView.h
//  JyAd
//
//  Created by Neo on 14/12/9.
//  Copyright (c) 2014年 wisemedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JyCallBack.h"
#import "CoreLocationController.h"

@interface JyAdView : UIWebView <UIWebViewDelegate,CoreLocationControllerDelegate>
{
    @private
        NSString *placeid;
        int adtype;
        int width;
        int height;
        JyCallBack *callback;
        UIView *superview;
}


-(id) init:(UIView*)superview placeid:(NSString*)placeid adtype:(int)adtype width:(int)width height:(int)height;

-(id) init:(UIView*)superview placeid:(NSString*)placeid adtype:(int)adtype left:(int)left top:(int)top  width:(int)width height:(int)height callback:(JyCallBack*)callback;

-(void) loadAd;

-(void) open;
-(void) close;

@end
