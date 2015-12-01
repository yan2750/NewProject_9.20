//
//  RegistrationView.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/1.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "RegistrationView.h"
#import "Masonry.h"

@implementation RegistrationView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    [self.label mas_makeConstraints:^(MASConstraintMaker *maker){
        //label和view的上下左右的边距都是10
        maker.edges.equalTo(self).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    
}
- (void)commonInit {
    //[self addSubview:self.label];
}
/*
- (UILabel *)label {
    if (_label == nil) {
        _label = [UILabel new];
        _label.textColor = [UIColor grayColor];
    }
    return _label;
}
*/
@end
