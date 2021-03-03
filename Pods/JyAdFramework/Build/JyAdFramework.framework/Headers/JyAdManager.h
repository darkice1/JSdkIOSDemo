//
//  JyAdManager.h
//  JyAdSDK
//
//  Created by 岳坤 on 2020/10/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JyAdType.h"
#import "JyAdManagerDelegate.h"
#import "JyAdModel.h"

NS_ASSUME_NONNULL_BEGIN

/// 广告管理器
@interface JyAdManager : NSObject

/// 初始化广告管理器
/// @param adType 广告类型
/// @param adPlaceID 广告ID
/// @param closebtn 是否显示关闭按钮（原生/开屏广告忽略）
/// @param delegate 代理
- (instancetype)initWithAdType:(JyAdType)adType
                       adPlaceID:(NSString *)adPlaceID
                        closebtn:(BOOL)closebtn
                      delegate:(id <JyAdManagerDelegate>)delegate;

/// 加载广告
- (void)loadAd;

/// 显示广告
/// @param superView 显示界面（原生广告忽略）
- (void)showAd:(nullable UIView *)superView;

/// 关闭广告
- (void)closeAd;

/// 广告模型
- (JyAdModel *)jyAdModel;

@end

NS_ASSUME_NONNULL_END
