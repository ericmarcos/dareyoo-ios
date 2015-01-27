//
//  Created by Raimon Lapuente on 4/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import "DYAuthor.h"
#import <KZPropertyMapper/KZPropertyMapper.h>

@implementation DYAuthor


+(instancetype)instanceFromDictionary:(NSDictionary *)data
{
    DYAuthor *author = [self author];
    [author populateInstanceWithDictionary:data];
    return author;
}

+(instancetype)author
{
    return [[self alloc] init];
}

-(void)populateInstanceWithDictionary:(NSDictionary *)data
{
    [KZPropertyMapper mapValuesFrom:data
                         toInstance:self
                       usingMapping:@{
                                      @"id" : KZProperty(id),
                                      @"url" : KZProperty(url),
                                      @"username" : KZProperty(username),
                                      @"pictureURL" : KZProperty(pictureURL),
                                      @"userBio" : KZProperty(userBio),
                                      @"fairPlay" : KZProperty(fairPlay),
                                      @"fairPlay" : KZProperty(level)
                                      }];
}

@end
