//
//  ViewController.m
//  Example
//
//  Created by 岳坤 on 2020/10/18.
//

#import "ViewController.h"
#import <JyAdFramework/JyAdFramework.h>
#import "TestNativeAdView.h"

@interface ViewController ()<JyAdManagerDelegate>

@property (strong, nonatomic) JyAdManager *adManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.adManager = [[JyAdManager alloc] initWithShowView:self.view adType:JyAdTypePop adPlaceID:@"U286Z049ONFK1DM7OVM4" adWidth:640 adheight:960 showRect:self.view.bounds closebtn:YES delegate:self];
    
    self.adManager = [[JyAdManager alloc] initNativeAdWithadPlaceID:@"U286Z049ONFK1DM7OVM4" adWidth:640 adheight:960 delegate:self];
    [self.adManager loadAd];
}

- (void)jyAdManagerOnAdReceive:(nonnull JyAdManager *)manager {
    NSLog(@"jyAdManagerOnAdReceive");
    if (manager.jyNative) {
        [self createNative:manager.jyNative];
    } else {
        [manager showAd];
    }
}

- (void)jyAdManager:(nonnull JyAdManager *)manager onAdError:(nonnull NSError *)error {
    NSLog(@"jyAdManagerOnAdError: %@", error);
}

- (void)jyAdManagerOnAdExposure:(nonnull JyAdManager *)manager {
    NSLog(@"jyAdManagerOnAdExposure");
}

- (void)jyAdManagerOnAdClicked:(nonnull JyAdManager *)manager {
    NSLog(@"jyAdManagerOnAdClicked");
}

- (void)jyAdManagerOnAdClosed:(nonnull JyAdManager *)manager {
    NSLog(@"jyAdManagerOnAdClosed");
    [manager closeAd];
}

- (void)createNative:(JyNative *)native {
    TestNativeAdView *adView = [[TestNativeAdView alloc] initWithFrame:self.view.bounds];
    adView.jyNative = native;
    adView.backgroundColor = [UIColor redColor];
    [self.view addSubview:adView];
}

@end

