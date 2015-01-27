//
//  DYAuthorRepository.h
//  dareyoo
//
//  Created by Raimon Lapuente on 2/1/15.
//  Copyright (c) 2015 Dareyoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RLNetworkRequest;
@class DYAuthor;

@interface DYAuthorRepository : NSObject

+(instancetype)authorRepositoryWithNetwork:(RLNetworkRequest *)network;
-(void) getAuthorWithSucessBlock:(void (^)(DYAuthor *))success;

@end
