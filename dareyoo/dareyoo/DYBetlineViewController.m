//
//  Created by Raimon Lapuente on 28/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import "DYBetlineViewController.h"
#import "DYBetlineTableViewCell.h"
#import "DYBetlineRepository.h"

@interface DYBetlineViewController ()

@property (nonatomic,strong,readonly) DYBetlineRepository *repository;

@end

@implementation DYBetlineViewController

static NSString *DYBetlineTableViewCellIdentifier = @"DYBetlineTableViewCell";

+(instancetype)betlineViewControllerWithRepository:(DYBetlineRepository *)repository
{
    return [[self alloc] initBetlineWithRepository:repository];
}

-(instancetype)initBetlineWithRepository:(DYBetlineRepository *)repository
{
    self = [super init];
    if (self) {
        _table = [[UITableView alloc] init];
        _repository = repository;
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.table registerClass:[DYBetlineTableViewCell class]
       forCellReuseIdentifier:DYBetlineTableViewCellIdentifier];
    
    [self.repository getBetWithSucessBlock:^(NSArray *array) {
        NSLog(@"did it");
    }];
}


#pragma mark - delegates

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     DYBetlineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DYBetlineTableViewCellIdentifier forIndexPath:indexPath];
    if (cell) {
        //populate
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 135.0f;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

@end
