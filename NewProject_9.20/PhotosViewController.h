//
//  PhotosViewController.h
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/3.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotosViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *galleryAry;

@end
