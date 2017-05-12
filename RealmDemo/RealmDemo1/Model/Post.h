//
//  Post.h
//  RealmDemo
//
//  Created by SoulJa on 2017/5/12.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import <Realm/Realm.h>

@interface Post : RLMObject
//主键
@property NSInteger id;

//标题
@property NSString *title;

//内容
@property NSData *content;

//时间
@property NSDate *timestamp;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Post *><Post>
RLM_ARRAY_TYPE(Post)
