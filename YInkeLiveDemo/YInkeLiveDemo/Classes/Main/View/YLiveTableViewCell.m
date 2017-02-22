//
//  YLiveTableViewCell.m
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/21.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "YLiveTableViewCell.h"

@interface YLiveTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *headImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *liveLabel;
@property (weak, nonatomic) IBOutlet UIImageView *previewImageView;

@end

@implementation YLiveTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _headImageView.layer.cornerRadius = 20;
    _headImageView.layer.masksToBounds = YES;
    _liveLabel.layer.cornerRadius = 10;
    _liveLabel.layer.masksToBounds = YES;
    _liveLabel.layer.borderWidth = 1;
    _liveLabel.layer.borderColor = [UIColor whiteColor].CGColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setLiveModel:(YLiveModel *)liveModel {
    _liveModel = liveModel;
    NSURL *imageUrl = [NSURL URLWithString:liveModel.creator.portrait];
    [_headImageView sd_setImageWithURL:imageUrl placeholderImage:nil options:SDWebImageRefreshCached completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        [_previewImageView sd_setImageWithURL:imageUrl placeholderImage:nil];
    }];
    
    _nameLabel.text = liveModel.creator.nick;
    if (liveModel.city.length == 0) {
        _addressLabel.text = @"难道在火星? >";
    }else{
        _addressLabel.text = [NSString stringWithFormat:@"%@ >",liveModel.city];
    }
    _numberLabel.text = [NSString stringWithFormat:@"%zi",liveModel.online_users];
    
}

@end






