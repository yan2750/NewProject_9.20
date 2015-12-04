//
//  CoreDataManager.m
//  NewProject_9.20
//
//  Created by YanMingyue on 15/12/3.
//  Copyright © 2015年 闫名月. All rights reserved.
//

#import "CoreDataManager.h"
#import "AppDelegate.h"

@interface CoreDataManager()

@property (nonatomic, assign) AppDelegate *appDelegate;

@end

@implementation CoreDataManager

+ (instancetype)shareInstace {
    static CoreDataManager *coreDataManager = nil;
    static dispatch_once_t once_t;
    dispatch_once(&once_t, ^{
        coreDataManager = [[self alloc] init];
    });
    return coreDataManager;
}

- (id)init {
    if (self = [super init]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
}

-(IBAction)save:(UIButton *)sender
{
    NSManagedObject *object = [NSEntityDescription insertNewObjectForEntityForName:@"Province" inManagedObjectContext:self.appDelegate.managedObjectContext];
    
    //[object setValue:<#(nullable id)#> forKey:<#(nonnull NSString *)#>]
    /*
    [object setValue:citytext.text forKey:@"cityname"];
    [object setValue:provincetext.text forKey:@"provincename"];
    
    [self.mydelegate saveContext];
     */
    
    
}@end
