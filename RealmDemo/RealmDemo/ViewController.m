//
//  ViewController.m
//  RealmDemo
//
//  Created by SoulJa on 2017/5/8.
//  Copyright © 2017年 soulja. All rights reserved.
//

#import "ViewController.h"
#import <Realm/Realm.h>
#import "User.h"
#import "Post.h"

@interface ViewController ()

@end

@interface Dog : RLMObject
@property NSString *name;
@property NSInteger age;
@end
RLM_ARRAY_TYPE(Dog);

@interface Person : RLMObject
@property NSString *name;
@property RLMArray<Dog *><Dog> *dogs;
@end

@implementation Dog

@end

@implementation Person

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    //创建一个数据库，记录狗狗的名字和年龄
//    Dog *dog = [[Dog alloc] init];
//    dog.name = @"Peter";
//    dog.age = 1;
//    
//    //创建一个主人的记录
//    Person *owner = [[Person alloc] init];
//    owner.name = @"Mike";
//    [owner.dogs addObject:dog];
//    
//    NSLog(@"%@",owner);
//    
//    //查询年龄小于2岁的狗狗
//    RLMResults *results = [Dog objectsWhere:@"age<2"];
//    NSLog(@"%@",results);
//    
//    //添加狗狗
//    RLMRealm *r = [RLMRealm defaultRealm];
//    [r transactionWithBlock:^{
//        [r addObject:dog];
//    }];
//    
//    NSLog(@"%@",results);
    
//    Post *post = [[Post alloc] initWithValue:@{@"title":@"untitled"}];
//    User *user = [[User alloc] init];
//    post.author = user;
//    
//    RLMRealm *r = [RLMRealm defaultRealm];
//    [r transactionWithBlock:^{
//        [r addObject:post];
//        [r addObject:user];
//    }];
//    
//    RLMResults *results = [Post allObjects];
//    NSLog(@"%@",results);
    
    //第三部分 数据的增删改查
    Post *post = [[Post alloc] initWithValue:@{@"title":@"untitled"}];
    
    RLMRealm *r = [RLMRealm defaultRealm];
    
//    [r transactionWithBlock:^{
//        [r addObject:post];
//    }];
    
    [r beginWriteTransaction];
    
    [r addObject:post];
    
    [r commitWriteTransaction];
    
    //删
//    [r transactionWithBlock:^{
//        [r deleteObject:post];
//        
//        [r deleteAllObjects];
//    }];
    
    //改
//    [r transactionWithBlock:^{
//        post.timestamp = [NSDate date];
//    }];
    
    //查
    RLMResults *results = [Post objectsWhere:@"title==%@",@"Test For Change"];
    
    Post *postBeFound = [results firstObject];
    
    [r transactionWithBlock:^{
        postBeFound.title = @"Test For Change";
    }];
    
    
    
    //批量修改
    RLMResults *allPosts = [Post allObjects];
    
    [r transactionWithBlock:^{
        [allPosts setValue:[NSDate date] forKey:@"timestamp"];
    }];
    
    //综合查询
    RLMResults *moreThan100LookResults = [Post objectsWhere:@"look > 100"];
    
    RLMResults *between10And100Results = [Post objectsWhere:@"look > 10 AND look < 100"];
    
    RLMResults *between10And100Results_2 = [Post objectsWhere:@"look BETWEEN{10,100}"];
    
    RLMResults *containResults = [Post objectsWhere:@"title CONTAINS[c] 'Test'"];
    
    RLMResults *results_2 = [Post objectsWhere:@"comments.@count>10"];
    RLMResults *results_3 = [results_2 objectsWhere:@"look > 100"];
    
    //结果排序
    [results_3 sortedResultsUsingProperty:@"timestamp" ascending:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
