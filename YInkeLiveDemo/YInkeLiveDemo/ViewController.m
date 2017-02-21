//
//  ViewController.m
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/20.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "ViewController.h"
#import "YMainViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)btnAction:(UIButton *)sender {
    YMainViewController *liveVC = [[YMainViewController alloc] init];
    [self.navigationController pushViewController:liveVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
