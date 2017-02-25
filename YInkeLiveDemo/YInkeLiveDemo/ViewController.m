//
//  ViewController.m
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/20.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "ViewController.h"
#import "YMainViewController.h"
#import "YCaptureViewController.h"
#import "YGPUImageFilterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btnAction:(UIButton *)sender {
    if (sender.tag == 100) {
        YMainViewController *liveVC = [[YMainViewController alloc] init];
        [self.navigationController pushViewController:liveVC animated:YES];
    } else if (sender.tag == 101) {
        YCaptureViewController *captureVC = [[YCaptureViewController alloc] init];
        [self.navigationController pushViewController:captureVC animated:YES];
    } else if (sender.tag == 102) {
        YGPUImageFilterViewController *filterVC = [[YGPUImageFilterViewController alloc] init];
        [self.navigationController pushViewController:filterVC animated:YES];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
