//
//  TestNativeAdView.m
//  Example
//
//  Created by 岳坤 on 2020/10/19.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import "TestNativeAdView.h"
#import <SDWebImage/SDWebImage.h>
#import <AVKit/AVKit.h>

@interface TestNativeAdView()

@property (weak, nonatomic) IBOutlet UIImageView *adImageView;


@end

@implementation TestNativeAdView

/// 显示广告
/// @param native 自渲染广告
- (void)showAd:(JyNative *)native {
    if (native.adModel.isVideo) {
        [self showVideoPalyer:native.adModel.adURL];
    } else {
        [self.adImageView sd_setImageWithURL:[NSURL URLWithString:native.adModel.adURL]];
    }
    [super showAd:native];
}

- (void)showVideoPalyer:(NSString *)path {
    NSURL *url = [NSURL URLWithString:path];
    AVPlayer *player = [[AVPlayer alloc] initWithURL:url];
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playerLayer.frame = self.bounds;
    [self.layer addSublayer:playerLayer];
    [player play];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
