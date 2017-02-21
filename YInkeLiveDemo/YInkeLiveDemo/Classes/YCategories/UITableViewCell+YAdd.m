//
//  UITableViewCell+YAdd.m
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/21.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "UITableViewCell+YAdd.h"

@implementation UITableViewCell (YAdd)

+ (UINib *)getRegisterNib {
    return [UINib nibWithNibName:NSStringFromClass([self class]) bundle:[NSBundle mainBundle]];
}

+ (NSString *)getClassName {
    return NSStringFromClass([self class]);
}

@end
