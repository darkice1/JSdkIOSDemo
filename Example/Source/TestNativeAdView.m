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

- (void)showAdWithManager:(JyAdManager *)manager {
    if (manager.jyAdModel.isVideo) {
        [self showVideoPalyer:manager.jyAdModel.adURL];
    } else {
        [self showImage:manager.jyAdModel.adURL];
    }
    
    [super showAdWithManager:manager];
}

- (void)showVideoPalyer:(NSString *)path {
    NSURL *url = [NSURL URLWithString:path];
    AVPlayer *player = [[AVPlayer alloc] initWithURL:url];
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playerLayer.frame = self.bounds;
    [self.layer addSublayer:playerLayer];
    [player play];
}

- (void)showImage:(NSString *)path {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    [imageView sd_setImageWithURL:[NSURL URLWithString:path]];
    [self addSubview:imageView];
}

@end
