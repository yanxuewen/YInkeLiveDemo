//
//  YCreatorModel.h
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/21.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "YBaseModel.h"

@interface YCreatorModel : YBaseModel

@property (copy, nonatomic) NSString *nick;
@property (copy, nonatomic) NSString *portrait;
@property (assign, nonatomic) BOOL gender;
@property (assign, nonatomic) NSUInteger _id;
@property (assign, nonatomic) NSInteger level;

@end
