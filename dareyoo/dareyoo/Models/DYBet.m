//
//  Created by Raimon Lapuente on 4/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import "DYBet.h"
#import <KZPropertyMapper/KZPropertyMapper.h>

@implementation DYBet

+(instancetype)instanceFromDictionary:(NSDictionary *)data
{
    DYBet *bet = [DYBet bet];
    return bet;
}

+(instancetype)bet
{
    return [[self alloc] init];
}

#pragma mark - parser

-(void)populateInstanceWithDictionary:(NSDictionary *)data
{
    [KZPropertyMapper mapValuesFrom:data
                         toInstance:self
                       usingMapping:@{
                                      @"author" : KZProperty(author),
                                      @"title" : KZProperty(title),
                                      @"description" : KZProperty(description),
                                      @"tiamounttle" : KZProperty(amount),
                                      @"referee_escrow" : KZProperty(referee_escrow),
                                      @"bet_type" : KZProperty(bet_type),
                                      @"bet_state" : KZProperty(bet_state),
                                      @"odds" : KZProperty(odds),
                                      @"created_at" : KZProperty(created_at),
                                      @"id" : KZProperty(id),
                                      @"bidding_deadline" : KZProperty(bidding_deadline),
                                      @"event_deadline" : KZProperty(event_deadline),
                                      @"isPublic" : KZProperty(isPublic),
                                      @"recipients" : KZProperty(recipients),
                                      @"claim" : KZProperty(claim),
                                      @"claim_lottery_winner" : KZProperty(claim_lottery_winner),
                                      @"claim_message" : KZProperty(claim_message),
                                      @"referee" : KZProperty(referee),
                                      @"referee_claim" : KZProperty(referee_claim),
                                      @"referee_lottery_winner" : KZProperty(referee_lottery_winner),
                                      @"referee_message" : KZProperty(referee_message),
                                      @"url" : KZProperty(url),
                                      @"bids" : KZProperty(bids),
                                      @"accepted_bid" : KZProperty(accepted_bid),
                                      @"winners" : KZProperty(winners),
                                      @"resolved_at" : KZProperty(resolved_at),
                                      @"complained_at" : KZProperty(complained_at),
                                      @"arbitrated_at" : KZProperty(arbitrated_at),
                                      @"winning_fees" : KZProperty(winning_fees),
                                      @"open_lottery" : KZProperty(open_lottery),
                                      @"points" : KZProperty(points),
                                      @"referee_points" : KZProperty(referee_points)
                                      }];
}

@end
