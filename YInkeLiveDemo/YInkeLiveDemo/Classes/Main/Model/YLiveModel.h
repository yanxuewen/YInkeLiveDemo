//
//  YLiveModel.h
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/21.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "YBaseModel.h"
#import "YCreatorModel.h"

@interface YLiveModel : YBaseModel

@property (copy, nonatomic) NSString *stream_addr;
@property (assign, nonatomic) NSUInteger online_users;
@property (copy, nonatomic) NSString *city;
@property (strong, nonatomic) YCreatorModel *creator;
@property (assign, nonatomic) NSUInteger _id;

@end
