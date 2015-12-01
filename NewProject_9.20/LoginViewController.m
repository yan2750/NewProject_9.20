//
//  LoginViewController.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/11/11.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginManager.h"

@interface LoginViewController ()
@property (nonatomic,strong) UITextField *usernameTextField;
@property (nonatomic,strong) UITextField *passwordTextField;

@end

@implementation LoginViewController

/**
 *  ARC是Xcode的编译器特性，ARC所做的就是在合适的位置插入release或autorelease
 *  ARC的原理就是：用指针指向对象，就是一次引用，当指针指向新对象的时候，原对象就会release一次。
 *  ARC的原理只要一个指针指向对象，那么对象就不会被销毁。strong指针就相当于是MRC里面的retain。
 *  weak指针的对象，也可以指向该对象，但是不会持有该对象。对象被销毁的时候weak指针就会被置为nil。
 */
static void *ObservationContext = &ObservationContext;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[LoginManager shareManager] addObserver:self forKeyPath:@"loggingIn" options:NSKeyValueObservingOptionInitial context:&ObservationContext];
}

- (void)updateLoginButton {
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    if (context == ObservationContext) {
        //[self ];
    }
}
@end
