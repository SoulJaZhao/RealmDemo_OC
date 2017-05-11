//
//  Person.h
//  RealmDemo
//
//  Created by SoulJa on 2017/5/11.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import <Realm/Realm.h>
#import "Dog.h"

@interface Person : RLMObject
//名字
@property NSString *name;
//年龄
@property NSNumber <RLMInt> *age;
//狗
@property RLMArray<Dog> *dogs;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Person *><Person>
RLM_ARRAY_TYPE(Person)
