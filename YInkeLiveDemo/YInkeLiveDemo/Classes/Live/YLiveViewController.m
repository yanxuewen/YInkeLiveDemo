//
//  YLiveViewController.m
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/22.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "YLiveViewController.h"

@interface YLiveViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *backImageView;
@property (strong, nonatomic) IJKFFMoviePlayerController *player;

@end

@implementation YLiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSURL *imageUrl = [NSURL URLWithString:_liveModel.creator.portrait];
//    [self.backImageView sd_setImageWithURL:imageUrl placeholderImage:nil];

    NSURL *url = [NSURL URLWithString:_liveModel.stream_addr];
    IJKFFMoviePlayerController *playerVc = [[IJKFFMoviePlayerController alloc] initWithContentURL:url withOptions:nil];
    [playerVc prepareToPlay];
    _player = playerVc;
    playerVc.view.frame = [UIScreen mainScreen].bounds;
    [self.view insertSubview:playerVc.view atIndex:1];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [_player pause];
    [_player stop];
    [_player shutdown];
}


- (IBAction)closeBtnAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
