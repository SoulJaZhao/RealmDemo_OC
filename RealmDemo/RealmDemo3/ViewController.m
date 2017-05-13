//
//  ViewController.m
//  RealmDemo3
//
//  Created by SoulJa on 2017/5/13.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import "ViewController.h"
#import "Movie.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Movie *m = [[Movie alloc] init];
    m.name = @"SoulJa";
    
    [[RLMRealm defaultRealm] transactionWithBlock:^{
        [[RLMRealm defaultRealm] addObject:m];
    }];
    
    RLMResults *results = [Movie allObjects];
    NSLog(@"%@",results);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
