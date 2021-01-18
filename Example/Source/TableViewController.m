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

@interface TableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *idfaLabel;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *idfa = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    self.idfaLabel.text = idfa;
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
    if ([controller isKindOfClass:[JyAdViewController class]]) {
        controller.placeID = @"TVZORBF66XRONZVPVBU7";
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
}


@end
