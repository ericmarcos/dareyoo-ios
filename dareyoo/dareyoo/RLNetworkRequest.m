//
//  Created by Raimon Lapuente on 05/10/14.
//  Copyright (c) 2014 8fit. All rights reserved.
//

#import "RLNetworkRequest.h"
#import "MMDebugMacros.h"

@implementation RLNetworkRequest

+(instancetype) network
{
    NSString *destinationURL = RLBaseURL;
    
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc]initWithBaseURL:[NSURL URLWithString:destinationURL]];
    
    RLNetworkRequest *network = [[RLNetworkRequest alloc] initNetworkWithManager:manager];
    return network;
}

-(instancetype) initNetworkWithManager:(AFHTTPRequestOperationManager *)manager
{
    self = [super init];
    if (self) {
        _requestManager = manager;
    }
    return self;
}

-(void) performGETRequest:(NSString *) request
                params:(NSDictionary *) params
          successBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
          failureBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))failure
{
    [self.requestManager GET:request
                  parameters:params
                     success:^(AFHTTPRequestOperation *operation, id responseObject) {
                         if (success) {
                             success(operation,responseObject);
                         }
                     }
                     failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                         DAssert(error,@"");
                         if (failure) {
                             failure(operation,error);
                         }
                     }];
}

-(void) performPOSTRequest:(NSString *) request
                   params:(NSDictionary *) params
             successBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
             failureBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))failure
{
    [self.requestManager POST:request
                   parameters:params
                      success:^(AFHTTPRequestOperation *operation, id responseObject) {
                         if (success) {
                             success(operation,responseObject);
                         }
                     }
                     failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                         DAssert(error,@"");
                         if (failure) {
                             failure(operation,error);
                         }
                     }];
}

@end
