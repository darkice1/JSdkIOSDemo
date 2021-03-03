//
//  JyAdType.h
//  JyAdSDK
//
//  Created by 岳坤 on 2020/10/18.
//

#import <Foundation/Foundation.h>

/// 广告类型
typedef enum : NSInteger {
    /// 普通广告
    JyAdTypeNormal = 1,
    /// 弹出广告
    JyAdTypePop = 2,
    /// 原生广告
    JyAdTypeNative = 3,
    /// 开屏广告
    JyAdTypeSplash = 4,
} JyAdType;
