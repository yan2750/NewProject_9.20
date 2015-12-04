//
//  PhotosViewController.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/3.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "PhotosViewController.h"
#import "Masonry.h"

@interface PhotosViewController ()

@property (nonatomic, strong) UITableView *GalleryTable;/**相册*/

@end

@implementation PhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.GalleryTable = [[UITableView alloc] init];
    [self.GalleryTable mas_makeConstraints:^(MASConstraintMaker *maker) {
        maker.size.equalTo(self.view);
        maker.center.equalTo(self.view);
    }];
    self.GalleryTable.delegate = self;
    self.GalleryTable.dataSource = self;
    [self.view addSubview:self.GalleryTable];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.galleryAry count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indetifier = @"DebugCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indetifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indetifier];
    }
    return cell;
}



@end
