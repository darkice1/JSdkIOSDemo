//
//  JyAdViewController.h
//  Example
//
//  Created by 岳坤 on 2020/10/21.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JyAdFramework/JyAdFramework.h>

NS_ASSUME_NONNULL_BEGIN

@interface JyAdViewController : UIViewController

/// 广告类型
@property (assign, nonatomic) JyAdType adType;

/// 广告位ID
@property (copy, nonatomic) NSString *placeID;
 
@property (assign, nonatomic) int adWidth;

@property (assign, nonatomic) int adHeight;


@end

NS_ASSUME_NONNULL_END
