//
//  JyAdManagerDelegate.h
//  JyAdSDK
//
//  Created by 岳坤 on 2020/10/18.
//

#import <Foundation/Foundation.h>

@class JyAdManager;

NS_ASSUME_NONNULL_BEGIN

/// 广告管理器代理
@protocol JyAdManagerDelegate <NSObject>

/// 广告加载成功
/// @param manager 广告管理器
- (void)jyAdManagerOnAdReceive:(JyAdManager *)manager;

/// 广告加载失败
/// @param manager 广告管理器
/// @param error 错误信息
- (void)jyAdManager:(JyAdManager *)manager onAdError:(NSError *) error;

/// 广告开始展示
/// @param manager 广告管理器
- (void)jyAdManagerOnAdExposure:(JyAdManager *)manager;

/// 广告被点击
/// @param manager 广告管理器
- (void)jyAdManagerOnAdClicked:(JyAdManager *)manager;

/// 广告被关闭/跳过
/// @param manager 广告管理器
- (void)jyAdManagerOnAdClosed:(JyAdManager *)manager;

@end

NS_ASSUME_NONNULL_END
