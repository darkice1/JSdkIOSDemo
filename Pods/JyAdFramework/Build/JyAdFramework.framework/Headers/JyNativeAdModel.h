//
//  JyNativeAdModel.h
//  JyAdFramework
//
//  Created by 岳坤 on 2020/10/19.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 自渲染广告模型
@interface JyNativeAdModel : NSObject

/// creatID
@property (copy, nonatomic) NSString *creatID;

/// 主素材地址（视频广告位此字段返回视频素材）
@property (copy, nonatomic) NSString *adURL;

/// 多图素材地址
@property (strong, nonatomic) NSArray *adURLs;

/// 图片地址（视频时有效）
@property (copy, nonatomic) NSString *imgURL;

/// 是不是视频
@property (assign, nonatomic) bool isVideo;

// 视频时长(视频时有效；单位秒)
@property (assign, nonatomic) NSInteger duration;

/// 广告标题
@property (copy, nonatomic) NSString *title;

/// 广告主ID或者名称
@property (copy, nonatomic) NSString *seat;

/// 广告介绍
@property (copy, nonatomic) NSString *body;

/// logoName
@property (copy, nonatomic) NSString *logoName;

/// 广告图标
@property (copy, nonatomic) NSString *icon;

/// 广告星级
@property (assign, nonatomic) NSInteger star;

/// 广告广告主
@property (assign, nonatomic) NSString *adveristiser;

/// 宽度
@property (assign, nonatomic) NSInteger width;

/// 高度
@property (assign, nonatomic) NSInteger height;

/// 初始化
/// @param json Json
- (instancetype)initWithJson:(NSDictionary *)json;

@end

NS_ASSUME_NONNULL_END
