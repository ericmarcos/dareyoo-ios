//
//  Created by Raimon Lapuente on 4/2/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import "DYBetlineRepository.h"
#import "RLNetworkRequest.h"
#import "DYBet.h"

@interface DYBetlineRepository ()

@property (nonatomic,strong,readonly) RLNetworkRequest *network;
@property (nonatomic,readonly) NSInteger count;
@property (nonatomic,strong) NSString *next;

@end

@implementation DYBetlineRepository

+(instancetype)betRepositoryWithNetwork:(RLNetworkRequest *)network
{
    DYBetlineRepository *betRepository = [[self alloc] initBetlineRepositoryWithNetwork:network];
    return betRepository;
}

-(instancetype)initBetlineRepositoryWithNetwork:(RLNetworkRequest *)network
{
    self = [super init];
    if (self) {
        _network = network;
    }
    return self;
}

-(void) getBetWithSucessBlock:(void (^)(NSArray *array))success
{
    //when auth is ready, remove global param
    [self.network performGETRequest:@"timeline/?global=true" params:@{} successBlock:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (responseObject) {
            NSLog(@"response %@",responseObject);
//            DYBet *bet = [DYBet instanceFromDictionary:responseObject];
            success(nil);
        }
    } failureBlock:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"error %@",responseObject);
    }];
}

@end
