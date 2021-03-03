//
//  JyAdViewController.m
//  Example
//
//  Created by 岳坤 on 2020/10/21.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import "JyAdViewController.h"
#import "TestNativeAdView.h"

@interface JyAdViewController ()<JyAdManagerDelegate, UITableViewDataSource>

@property (strong, nonatomic) JyAdManager *adManager;

@property (weak, nonatomic) IBOutlet UITextField *placeTextField;
@property (weak, nonatomic) IBOutlet UIView *showView;
@property (weak, nonatomic) IBOutlet UITableView *logTableView;

@property (strong, nonatomic) NSMutableArray *logs;

@end

@implementation JyAdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 默认值
    self.placeTextField.text = self.placeID;
    // Log
    [self initTableView];
}

# pragma mark - Action

- (IBAction)loadClick:(UIButton *)sender {
    NSString *placeID = self.placeTextField.text;
    self.adManager = [[JyAdManager alloc] initWithAdType:self.adType
                                               adPlaceID:placeID
                                                closebtn:YES
                                                delegate:self
                      ];
    [self.adManager loadAd];
}

- (IBAction)showClick:(UIButton *)sender {
    if (self.adType == JyAdTypeNative) {
        TestNativeAdView *nativeAdView = [[TestNativeAdView alloc] initWithFrame:self.showView.bounds];
        [nativeAdView showAdWithManager:self.adManager];
        [self.showView addSubview:nativeAdView];
    } else {
        [self.adManager showAd:self.showView];
    }
}

# pragma mark - JyAdManagerDelegate

- (void)jyAdManagerOnAdReceive:(nonnull JyAdManager *)manager {
    [self addLog:@"jyAdManagerOnAdReceive"];
}

- (void)jyAdManager:(nonnull JyAdManager *)manager onAdError:(nonnull NSError *)error {
    [self addLog:[NSString stringWithFormat:@"jyAdManagerOnAdError: %@", error]];
}

- (void)jyAdManagerOnAdExposure:(nonnull JyAdManager *)manager {
    [self addLog:@"jyAdManagerOnAdExposure"];
}

- (void)jyAdManagerOnAdClicked:(nonnull JyAdManager *)manager {
    [self addLog:@"jyAdManagerOnAdClicked"];
}

- (void)jyAdManagerOnAdClosed:(nonnull JyAdManager *)manager {
    [self addLog:@"jyAdManagerOnAdClosed"];
    [manager closeAd];
}

- (void)jyAdManagerOnAdSkiped:(JyAdManager *)manager {
    [self addLog:@"jyAdManagerOnAdSkiped"];
    [manager closeAd];
}


# pragma mark - TableView

- (void)initTableView {
    self.logs = [NSMutableArray array];
}

- (void)addLog:(NSString *)log {
    [self.logs addObject:log];
    [self.logTableView reloadData];
    [self.logTableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self.logs.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:NO];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.logs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    cell.detailTextLabel.text = self.logs[indexPath.row];
    cell.detailTextLabel.numberOfLines = 0;
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

@end
