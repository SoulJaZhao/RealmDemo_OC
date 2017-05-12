//
//  Post.m
//  RealmDemo
//
//  Created by SoulJa on 2017/5/12.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import "Post.h"

@implementation Post

//必要属性
+ (NSArray<NSString *> *)requiredProperties {
    return @[@"title"];
}

//主键
+ (NSString *)primaryKey {
    return @"id";
}

//默认属性
+ (NSDictionary *)defaultPropertyValues {
    NSDate *date = [NSDate date];
    return @{
                @"timestamp":date
             };
}

//索引属性
+ (NSArray<NSString *> *)indexedProperties {
    return @[@"title"];
}
@end
