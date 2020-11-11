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
#import "JyNative.h"

NS_ASSUME_NONNULL_BEGIN

/// 广告管理器
@interface JyAdManager : NSObject


/// 初始化广告
/// @param adType 广告类型
/// @param adPlaceID 广告ID
/// @param adWidth 广告宽度
/// @param adHeight 广告高度
/// @param delegate 代理
/// @param showView 广告展示界面（原生广告忽略）
/// @param showRect 显示区域（原生广告忽略）
/// @param closebtn 是否显示关闭按钮（原生广告忽略）
- (instancetype)initWithAdType:(JyAdType)adType
                       adPlaceID:(NSString *)adPlaceID
                         adWidth:(int)adWidth
                        adheight:(int)adHeight
                        delegate:(id <JyAdManagerDelegate>)delegate
                        showView:(nullable UIView *)showView
                        showRect:(CGRect)showRect
                        closebtn:(BOOL)closebtn;

/// 加载广告
- (void)loadAd;

/// 显示广告
- (void)showAd;

/// 关闭广告
- (void)closeAd;

/// 获取原生广告
- (JyNative *)jyNative;

@end

NS_ASSUME_NONNULL_END
