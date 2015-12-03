//
//  Photo+CoreDataProperties.h
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/3.
//  Copyright © 2015年 闫名月. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Photo.h"

NS_ASSUME_NONNULL_BEGIN

@interface Photo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *photoName;
@property (nullable, nonatomic, retain) NSString *photoTitle;

@end

NS_ASSUME_NONNULL_END
