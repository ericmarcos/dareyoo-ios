//
//  DYBetlineTableViewCell.h
//  dareyoo
//
//  Created by Raimon Lapuente on 29/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYBetlineTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *avatarImage;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *betLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeToFinishLabel;

@end
