//
//  CommonDefine.h
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/1.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h

// 常规控件----------------------------------------------------------------------------------
#define ScreenHeight        [UIScreen mainScreen].bounds.size.height
#define ScreenWidth         [UIScreen mainScreen].bounds.size.width

//日志方法名称
#define LOG_METHOD_NAME     {NSLog(@"%@", NSStringFromSelector(_cmd));}
//打印对象的类名，以及对象本身的地址
#define LOG_OBJ_ADDRESS(obj) {NSLog(@"%@ : %p",NSStringFromClass([obj class]), obj);}
//打印空行
#define LOG_END  {NSLog(@"%@", @" ");}
#endif /* CommonDefine_h */
