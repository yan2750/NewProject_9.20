//
//  LoginManager.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/11/11.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "LoginManager.h"

@implementation LoginManager

/**
 *  创建一个登录的单例
 *
 *  @return 返回单例对象
 */
+ (LoginManager *)shareManager {
    static LoginManager *shareInstance;//共享实例
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[self alloc] init];
    });
    return shareInstance;
}
@end
