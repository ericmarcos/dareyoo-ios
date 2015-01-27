//
//  Created by Raimon Lapuente on 4/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DYAuthor;
@class DYBid;

@interface DYBet : NSObject

@property (nonatomic,strong,readonly) DYAuthor *author;
@property (nonatomic,copy,readonly) NSString *title;
@property (nonatomic,copy,readonly) NSString *description;
@property (nonatomic,strong,readonly) NSNumber *amount;
@property (nonatomic,strong,readonly) NSNumber *referee_escrow;
@property (nonatomic,strong,readonly) NSNumber *bet_type; //later may use ENUM
@property (nonatomic,copy,readonly) NSString *bet_state;
@property (nonatomic,strong,readonly) NSNumber *odds;
@property (nonatomic,copy,readonly) NSString *created_at;
@property (nonatomic,copy,readonly) NSString *id;
@property (nonatomic,copy,readonly) NSString *bidding_deadline;
@property (nonatomic,copy,readonly) NSString *event_deadline;
@property (nonatomic) BOOL isPublic;
@property (nonatomic,strong,readonly) NSArray *recipients;
@property (nonatomic,strong,readonly) NSNumber *claim;
@property (nonatomic,copy,readonly) NSString *claim_lottery_winner;
@property (nonatomic,copy,readonly) NSString *claim_message;
@property (nonatomic,copy,readonly) NSString *referee;
@property (nonatomic,copy,readonly) NSString *referee_claim;
@property (nonatomic,copy,readonly) NSString *referee_lottery_winner;
@property (nonatomic,copy,readonly) NSString *referee_message;
@property (nonatomic,copy,readonly) NSString *url;
@property (nonatomic,strong,readonly) NSArray *bids;
@property (nonatomic,strong,readonly) NSString *accepted_bid;
@property (nonatomic,strong,readonly) NSArray *winners;
@property (nonatomic,copy,readonly) NSString *resolved_at;
@property (nonatomic,copy,readonly) NSString *complained_at;
@property (nonatomic,copy,readonly) NSString *arbitrated_at;
@property (nonatomic,strong,readonly) NSNumber *winning_fees;
@property (nonatomic) BOOL open_lottery;
@property (nonatomic,strong,readonly) NSNumber *points;
@property (nonatomic,strong,readonly) NSNumber *referee_points;

+(instancetype)instanceFromDictionary:(NSDictionary *)data;
+(instancetype)bet;

@end
