//
//  DYAuthorRepository.m
//  dareyoo
//
//  Created by Raimon Lapuente on 2/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import "DYAuthorRepository.h"
#import "RLNetworkRequest.h"
#import "DYAuthor.h"

@interface DYAuthorRepository ()

@property (nonatomic,strong,readonly) RLNetworkRequest *network;

@end

@implementation DYAuthorRepository

+(instancetype)authorRepositoryWithNetwork:(RLNetworkRequest *)network
{
    DYAuthorRepository *authorRepository = [[self alloc] initAuthorRepositoryWithNetwork:network];
    return authorRepository;
}

-(instancetype)initAuthorRepositoryWithNetwork:(RLNetworkRequest *)network
{
    self = [super init];
    if (self) {
        _network = network;
    }
    return self;
}

-(void) getBetWithSucessBlock:(void (^)(DYAuthor *))success
{
    [self.network performPOSTRequest:@"" params:@{} successBlock:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (responseObject) {
            DYAuthor *author = [DYAuthor instanceFromDictionary:responseObject];
            success(author);
        }
    } failureBlock:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"error %@",responseObject);
    }];
}

@end
