//
//  ViewController.m
//  RealmDemo2
//
//  Created by SoulJa on 2017/5/13.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    
    //增
    Book *book = [[Book alloc] initWithValue:@[@"白夜行",@"东野圭吾"]];
    
    [realm transactionWithBlock:^{
        [realm addObject:book];
    }];
    
    //查
    RLMResults *results = [Book objectsWhere:@"author contains '东'"];
    
    //删
//    [realm transactionWithBlock:^{
//        [realm deleteAllObjects];
//    }];
    
    //改
    [realm transactionWithBlock:^{
        book.bookName = @"幻夜";
    }];
    
    
    NSLog(@"%@",results);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
