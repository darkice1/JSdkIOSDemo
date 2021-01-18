//
//  TestViewController.m
//  Example
//
//  Created by 岳坤 on 2020/12/24.
//

#import "TestViewController.h"
#import <JyAdFramework/JyAdFramework.h>

@interface TestViewController ()<JyAdManagerDelegate>

@property (strong, nonatomic) JyAdManager *adManager;


@property (weak, nonatomic) IBOutlet UIView *showView;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.adManager = [[JyAdManager alloc] initWithAdType:JyAdTypeSplash adPlaceID:@"U286Z049ONFK1DM7OVM4" adWidth:640 adheight:960 delegate:self showView:self.showView showRect:self.showView.bounds closebtn:YES];
    [self.adManager loadAd];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:true animated:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:false animated:animated];
}

# pragma mark - JyAdManagerDelegate

/// 广告加载成功
/// @param manager 广告管理器
- (void)jyAdManagerOnAdReceive:(nonnull JyAdManager *)manager {
    [manager showAd];
}

/// 广告加载失败
/// @param manager 广告管理器
/// @param error 错误信息
- (void)jyAdManager:(nonnull JyAdManager *)manager onAdError:(nonnull NSError *)error {
}

/// 广告开始展示
/// @param manager 广告管理器
- (void)jyAdManagerOnAdExposure:(nonnull JyAdManager *)manager {
}

/// 广告被点击
/// @param manager 广告管理器
- (void)jyAdManagerOnAdClicked:(nonnull JyAdManager *)manager {
}

/// 广告被关闭
/// @param manager 广告管理器
- (void)jyAdManagerOnAdClosed:(nonnull JyAdManager *)manager {
    [manager closeAd];
}

/// 广告被跳过
/// @param manager 广告管理器
- (void)jyAdManagerOnAdSkiped:(JyAdManager *)manager {
    [manager closeAd];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
