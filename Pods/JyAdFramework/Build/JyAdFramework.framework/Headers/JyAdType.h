//
//  JyAdType.h
//  JyAdSDK
//
//  Created by 岳坤 on 2020/10/18.
//

#import <Foundation/Foundation.h>

typedef enum : NSInteger {
    /// 普通广告
    JyAdTypeNormal = 6,
    /// 弹出广告
    JyAdTypePop = 7,
    /// 原生广告
    JyAdTypeNative = 999,
    /// 开屏广告
    JyAdTypeSplash = 8,
} JyAdType;
