//
//  Created by Raimon Lapuente on 10/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DYAuthor;

@interface DYBid : NSObject

@property (nonatomic,copy,readonly) NSString *id;
@property (nonatomic,strong,readonly) DYAuthor *author;
@property (nonatomic,strong,readonly) NSArray *participants;
@property (nonatomic,strong,readonly) NSURL *participants_url;
@property (nonatomic,strong,readonly) DYAuthor *claim_author;
@property (nonatomic,strong,readonly) NSNumber *points;
@property (nonatomic,strong,readonly) NSURL *url;
@property (nonatomic,strong,readonly) NSURL *bet;
@property (nonatomic,copy,readonly) NSString *title;
@property (nonatomic,strong,readonly) NSNumber *amount;
@property (nonatomic,copy,readonly) NSString *created_at;
@property (nonatomic,copy,readonly) NSString *claim;
@property (nonatomic,copy,readonly) NSString *claim_message;

@end
