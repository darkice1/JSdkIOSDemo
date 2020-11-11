//
//  JyNativeDelegate.h
//  JyAdSDK
//
//  Created by 岳坤 on 2020/10/18.
//

#import <Foundation/Foundation.h>

@class JyNative;

NS_ASSUME_NONNULL_BEGIN

@protocol JyNativeDelegate <NSObject>

/// 广告加载成功
/// @param native 自渲染广告
- (void)jyNativeOnAdReceive:(JyNative *)native;

/// 广告加载失败
/// @param native 自渲染广告
/// @param error 错误信息
- (void)jyNative:(JyNative *)native onAdError:(NSError *)error;

/// 广告开始展示
/// @param native 自渲染广告
- (void)jyNativeOnAdExposure:(JyNative *)native;

/// 广告被点击
/// @param native 自渲染广告
- (void)jyNativeOnAdClicked:(JyNative *)native;

/// 广告被关闭
/// @param native 自渲染广告
- (void)jyNativeOnAdClosed:(JyNative *)native;

@end

NS_ASSUME_NONNULL_END
