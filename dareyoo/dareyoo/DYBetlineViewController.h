//
//  Created by Raimon Lapuente on 28/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DYBetlineRepository;

@interface DYBetlineViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) IBOutlet UITableView *table;

+(instancetype)betlineViewControllerWithRepository:(DYBetlineRepository *)repository;

@end
