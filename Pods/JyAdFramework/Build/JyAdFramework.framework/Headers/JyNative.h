//
//  JyNative.h
//  JyAdSDK
//
//  Created by 岳坤 on 2020/10/18.
//

#import <Foundation/Foundation.h>
#import "JyNativeDelegate.h"
#import "JyNativeAdModel.h"

NS_ASSUME_NONNULL_BEGIN

/// 自渲染广告
@interface JyNative : NSObject

/// 初始化自渲染广告
/// @param adPlaceID 广告ID
/// @param adWidth 广告宽度
/// @param adHeight 广告高度
/// @param delegate 代理
-(instancetype)initWithAdPlaceid:(NSString*)adPlaceID
                         adWidth:(int)adWidth
                        adHeight:(int)adHeight
                        delegate:(id<JyNativeDelegate>)delegate;

/// 加载广告
- (void)loadAd;

/// 显示广告
- (void)showAd;

/// 关闭广告
- (void)closeAd;

/// 广告模型
- (JyNativeAdModel *)adModel;

@end

NS_ASSUME_NONNULL_END
