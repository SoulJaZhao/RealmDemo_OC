//
//  Person.m
//  RealmDemo
//
//  Created by SoulJa on 2017/5/11.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (NSDictionary<NSString *,RLMPropertyDescriptor *> *)linkingObjectsProperties {
    return @{
                @"dogs":[RLMPropertyDescriptor descriptorWithClass:[Dog class] propertyName:@"owner"]
                };
}

@end
