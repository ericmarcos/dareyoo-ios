//
//  Created by Raimon Lapuente on 10/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import "DYBid.h"
#import <KZPropertyMapper/KZPropertyMapper.h>

@implementation DYBid

+(instancetype)instanceFromDictionary:(NSDictionary *)data
{
    DYBid *bid = [self bid];
    [bid populateInstanceWithDictionary:data];
    return bid;
}

+(instancetype)bid
{
    return [[self alloc] init];
}

-(void)populateInstanceWithDictionary:(NSDictionary *)data
{
    [KZPropertyMapper mapValuesFrom:data
                         toInstance:self
                       usingMapping:@{
                                      @"id" : KZProperty(id),
                                      @"author" : KZProperty(author),
                                      @"participants" : KZProperty(participants),
                                      @"participants_url" : KZProperty(participants_url),
                                      @"claim_author" : KZProperty(claim_author),
                                      @"points" : KZProperty(points),
                                      @"url" : KZProperty(url),
                                      @"bet" : KZProperty(bet),
                                      @"title" : KZProperty(title),
                                      @"amount" : KZProperty(amount),
                                      @"created_at" : KZProperty(created_at),
                                      @"claim" : KZProperty(claim),
                                      @"claim_message" : KZProperty(claim_message),
                                      @"url" : KZProperty(url)
                                      }];
}

@end
