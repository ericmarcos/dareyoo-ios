//
//  Created by Raimon Lapuente on 05/10/14.
//  Copyright (c) 2014 All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFHTTPRequestOperationManager.h"

static NSString* const RLBaseURL = @"http://www.dareyoo.com/api/v1/";

@interface RLNetworkRequest : NSObject

@property (nonatomic, strong, readonly) AFHTTPRequestOperationManager *requestManager;

+(instancetype) network;

-(void) performGETRequest:(NSString *) request
                   params:(NSDictionary *) params
             successBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
             failureBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))failure;

-(void) performPOSTRequest:(NSString *) request
                    params:(NSDictionary *) params
              successBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
              failureBlock:(void (^)(AFHTTPRequestOperation *operation, id responseObject))failure;
@end
