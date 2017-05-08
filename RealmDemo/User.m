//
//  User.m
//  RealmDemo
//
//  Created by SoulJa on 2017/5/8.
//  Copyright © 2017年 soulja. All rights reserved.
//

#import "User.h"
#import "Post.h"

@implementation User
//反向关系
+ (NSDictionary<NSString *,RLMPropertyDescriptor *> *)linkingObjectsProperties {
    return @{
             @"posts":[RLMPropertyDescriptor descriptorWithClass:Post.class propertyName:@"author"],
             };
}
@end
