//
//  User.h
//  RealmDemo
//
//  Created by SoulJa on 2017/5/8.
//  Copyright © 2017年 soulja. All rights reserved.
//

#import <Realm/Realm.h>
#import "Post.h"

@interface User : RLMObject
@property NSString *nickname;

@property (readonly) RLMLinkingObjects *posts;
@end
