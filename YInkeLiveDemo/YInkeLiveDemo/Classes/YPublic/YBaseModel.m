//
//  YBaseModel.m
//  YInkeLiveDemo
//
//  Created by yanxuewen on 2017/2/21.
//  Copyright © 2017年 YXW. All rights reserved.
//

#import "YBaseModel.h"

@implementation YBaseModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"_id" : @"id"};
}

- (void)encodeWithCoder:(NSCoder *)aCoder { [self yy_modelEncodeWithCoder:aCoder]; }
- (id)initWithCoder:(NSCoder *)aDecoder { self = [super init]; return [self yy_modelInitWithCoder:aDecoder]; }
- (id)copyWithZone:(NSZone *)zone { return [self yy_modelCopy]; }
- (NSUInteger)hash { return [self yy_modelHash]; }
- (BOOL)isEqual:(id)object { return [self yy_modelIsEqual:object]; }
- (NSString *)description { return [self yy_modelDescription]; }


@end
