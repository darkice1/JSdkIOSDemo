//
//  JyNativeAdView.h
//  JyAdSDK
//
//  Created by 岳坤 on 2020/10/18.
//

#import <UIKit/UIKit.h>
#import "JyNative.h"

NS_ASSUME_NONNULL_BEGIN

/// 自渲染广告界面，所有的自渲染广告需要继承于此
@interface JyNativeAdView : UIView

/// 显示广告
/// @param native 自渲染广告
- (void)showAd:(JyNative *)native;

@end

NS_ASSUME_NONNULL_END
