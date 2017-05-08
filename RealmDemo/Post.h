//
//  Post.h
//  RealmDemo
//
//  Created by SoulJa on 2017/5/8.
//  Copyright © 2017年 soulja. All rights reserved.
//

#import <Realm/Realm.h>
@class User;
RLM_ARRAY_TYPE(Post);

@interface Post : RLMObject
//主键
@property NSString *identifer;

//title 标题
@property NSString *title;

//author
@property  User *author;

//时间戳
@property NSDate *timestamp;

//内容
@property NSData *content;

//浏览量
@property NSNumber <RLMInt> *look;

//回帖
@property RLMArray<Post *><Post> *comments;

//置顶
@property NSNumber <RLMBool> *isTop;
@end

