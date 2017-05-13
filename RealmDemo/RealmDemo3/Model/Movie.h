//
//  Movie.h
//  RealmDemo
//
//  Created by SoulJa on 2017/5/13.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import <Realm/Realm.h>

@interface Movie : RLMObject
//名称
@property NSString *name;

//浏览量
@property NSInteger look;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Movie *><Movie>
RLM_ARRAY_TYPE(Movie)
