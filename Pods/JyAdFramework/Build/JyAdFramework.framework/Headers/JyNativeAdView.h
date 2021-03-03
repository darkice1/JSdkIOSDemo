//
//  JyNativeAdView.h
//  JyAdFramework
//
//  Created by 岳坤 on 2020/12/29.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JyAdManager.h"

NS_ASSUME_NONNULL_BEGIN

/// 原生广告界面
@interface JyNativeAdView : UIView

/// 广告管理器
@property (strong, nonatomic) JyAdManager *manager;

/// 显示广告
/// @param manager 广告管理器
- (void)showAdWithManager:(JyAdManager *)manager;

@end

NS_ASSUME_NONNULL_END
