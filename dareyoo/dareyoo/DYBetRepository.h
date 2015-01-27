//
//  DYBetRepository.h
//  dareyoo
//
//  Created by Raimon Lapuente on 2/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RLNetworkRequest;
@class DYBet;

@interface DYBetRepository : NSObject

+(instancetype)betRepositoryWithNetwork:(RLNetworkRequest *)network;
-(void) getBetWithSucessBlock:(void (^)(DYBet *))success;

@end
