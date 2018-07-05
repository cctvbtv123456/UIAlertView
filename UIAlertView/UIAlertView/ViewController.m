//
//  ViewController.m
//  UIAlertView
//
//  Created by mac on 2018/7/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+YCPopover.h"
#import "PopViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)alert:(UIButton *)sender {
    PopViewController *vc = [PopViewController new];
    [self yc_centerPresentController:vc presentedSize:CGSizeMake(200, 300) completeHandle:^(BOOL presented) {
        if (presented) {
            NSLog(@"弹出了");
        }else{
            NSLog(@"消失了");
        }
    }];
}

- (IBAction)sheel:(UIButton *)sender {
    PopViewController *vc = [PopViewController new];
    [self yc_bottomPresentController:vc presentedHeight:220 completeHandle:^(BOOL presented) {
        if (presented) {
            NSLog(@"弹出了");
        }else{
            NSLog(@"消失了");
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
