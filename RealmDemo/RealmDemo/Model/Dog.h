//
//  Dog.h
//  RealmDemo
//
//  Created by SoulJa on 2017/5/11.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import <Realm/Realm.h>

@interface Dog : RLMObject
//昵称
@property NSString *nickName;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Dog *><Dog>
RLM_ARRAY_TYPE(Dog)
