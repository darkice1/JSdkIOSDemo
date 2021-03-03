//
//  TableViewController.m
//  Example
//
//  Created by 岳坤 on 2020/10/23.
//  Copyright © 2020 linusflow. All rights reserved.
//

#import "TableViewController.h"
#import "JyAdViewController.h"
#import <AdSupport/AdSupport.h>
#import "CAID.h"

@interface TableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *idfaLabel;

@property (weak, nonatomic) IBOutlet UITextField *caidAppidTextField;

@property (weak, nonatomic) IBOutlet UITextField *caidPubKeyTextField;

@property (weak, nonatomic) IBOutlet UILabel *caidLabel;

@property (strong, nonatomic) CAID *caid;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *idfa = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    self.idfaLabel.text = idfa;
    
    // CAID
    self.caidAppidTextField.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"CAID_APP_ID"];
    self.caidPubKeyTextField.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"CAID_PUB_KEY"];
    [self caidClick: nil];
}

- (IBAction)copyClick:(UIButton *)sender {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = self.idfaLabel.text;
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"复制成功" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    JyAdViewController *controller = segue.destinationViewController;
    controller.placeID = @"GL2TTLZJK3JTFWXECFJ1";
    controller.adWidth = 640;
    controller.adHeight = 960;
    if ([segue.identifier isEqualToString:@"Normal"]) {
        controller.adType = JyAdTypeNormal;
    } else if ([segue.identifier isEqualToString:@"Pop"]) {
        controller.adType = JyAdTypePop;
    } else if ([segue.identifier isEqualToString:@"Native"]) {
        controller.adType = JyAdTypeNative;
    } else if ([segue.identifier isEqualToString:@"splash"]) {
        controller.adType = JyAdTypeSplash;
    }
}

- (IBAction)caidClick:(UIButton *)sender {
    NSString *appid = self.caidAppidTextField.text;
    NSString *pubKey = self.caidPubKeyTextField.text;
    if (appid && pubKey && appid.length > 0 && pubKey.length > 0) {
        // 保存
        [[NSUserDefaults standardUserDefaults] setObject:appid forKey:@"CAID_APP_ID"];
        [[NSUserDefaults standardUserDefaults] setObject:appid forKey:@"CAID_PUB_KEY"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        // CAID
        self.caid = [CAID initCAID:appid pubKey:pubKey];
        [self.caid getCAIDAsyncly:^(CAIDError * _Nonnull error, CAIDStruct * _Nonnull caidStruct) {
            if (error.code == CAIDErrorCodeNone) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [[JyCAIDManager manager] configCAIDVersion:caidStruct.version andCAID:caidStruct.caid];
                    self.caidLabel.text = caidStruct.caid;
                });
            }
        }];
    }
}

@end
