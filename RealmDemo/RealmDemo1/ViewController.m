//
//  ViewController.m
//  RealmDemo1
//
//  Created by SoulJa on 2017/5/11.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import "ViewController.h"
#import <Realm/Realm.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //获取数据库配置
    RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
    NSLog(@"fileURL=%@",config.fileURL);
    
    //初始化对象
   
    
    //获取数据库单利对象
    RLMRealm *realm = [RLMRealm defaultRealm];
    
    //写入数据库
    [realm beginWriteTransaction];
    
    [realm commitWriteTransaction];
    
    //查询数据
    RLMResults *results = [Person allObjects];
    NSLog(@"results=%@",results);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end