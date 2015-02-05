//
//  Created by Raimon Lapuente on 4/2/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RLNetworkRequest;

@interface DYBetlineRepository : NSObject

+(instancetype)betRepositoryWithNetwork:(RLNetworkRequest *)network;
-(void) getBetWithSucessBlock:(void (^)(NSArray *array))success;

@end
