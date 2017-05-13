//
//  Book.h
//  RealmDemo
//
//  Created by SoulJa on 2017/5/13.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import <Realm/Realm.h>

@interface Book : RLMObject
//书名
@property NSString *bookName;

//作者
@property NSString *author;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<Book *><Book>
RLM_ARRAY_TYPE(Book)
