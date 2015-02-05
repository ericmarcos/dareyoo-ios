//
//  Created by Raimon Lapuente on 2/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import "DYBetRepository.h"
#import "RLNetworkRequest.h"
#import "DYBet.h"

@interface DYBetRepository ()

@property (nonatomic,strong,readonly) RLNetworkRequest *network;

@end

@implementation DYBetRepository

+(instancetype)betRepositoryWithNetwork:(RLNetworkRequest *)network
{
    DYBetRepository *betRepository = [[self alloc] initBetRepositoryWithNetwork:network];
    return betRepository;
}

-(instancetype)initBetRepositoryWithNetwork:(RLNetworkRequest *)network
{
    self = [super init];
    if (self) {
        _network = network;
    }
    return self;
}

-(void) getBetWithSucessBlock:(void (^)(DYBet *bet))success
{
    [self.network performPOSTRequest:@"" params:@{} successBlock:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (responseObject) {
            DYBet *bet = [DYBet instanceFromDictionary:responseObject];
            success(bet);
        }
    } failureBlock:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"error %@",responseObject);
    }];
}

@end
