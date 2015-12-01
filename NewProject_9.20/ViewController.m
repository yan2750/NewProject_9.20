//
//  ViewController.m
//  NewProject_9.20
//
//  Created by 闫名月 on 15/9/20.
//  Copyright (c) 2015年 闫名月. All rights reserved.
//

#import "ViewController.h"
#import "RegistrationView.h"

@interface ViewController ()
@property (nonatomic, strong) UIImageView *whiteImgV;
@property (nonatomic, strong) UIImageView *blueImgV;

@property (nonatomic, strong) CAShapeLayer *maskLayerUp;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //[self creatUI];
    //[self startGreenHeadAnimation];
    

}

- (void)creatUI {
    self.whiteImgV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pull_refresh_arrow"]];
    self.whiteImgV.frame = CGRectMake(100, 100, 30, 30);
    [self.view addSubview:self.whiteImgV];
    
    self.blueImgV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pull_refresh_arrow_highlight"]];
    self.blueImgV.frame = CGRectMake(100, 100, 30, 30);
    self.blueImgV.layer.mask = [self greenHeadMaskLayer];
    self.blueImgV.maskView = nil;
    [self.view addSubview:self.blueImgV];
}

- (void)startGreenHeadAnimation {
    CABasicAnimation *upAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    upAnimation.repeatCount = 0;
    upAnimation.fromValue = [NSValue valueWithCGPoint:CGPointMake(-5.0f, -5.0f)];
    upAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(15.0f, 15.0f)];
    upAnimation.duration = 2.0f;
    [self.maskLayerUp addAnimation:upAnimation forKey:@"upAnimation"];
}

- (CALayer *)greenHeadMaskLayer {
    CALayer *mask = [CALayer layer];
    mask.frame = self.blueImgV.bounds;
    
    self.maskLayerUp = [CAShapeLayer layer];
    self.maskLayerUp.opacity = 0.8f;
    self.maskLayerUp.bounds = CGRectMake(0, 0, 30.0f, 30.0f);
    self.maskLayerUp.fillColor = [UIColor blackColor].CGColor;
    self.maskLayerUp.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(15.0f, 15.0f)
                                                           radius:15.0f
                                                       startAngle:0
                                                         endAngle:2 * M_PI
                                                        clockwise:YES].CGPath;
    [mask addSublayer:self.maskLayerUp];
    return mask;
}

@end
