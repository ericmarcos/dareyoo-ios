//
//  NSDictionary+Parser.m
//  dareyoo
//
//  Created by Raimon Lapuente on 14/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import "NSDictionary+Parser.h"

@implementation NSDictionary (Parser)

-(NSString *)stringForKey:(id) key
{
    id object = [self objectForKey:key];
    
    if (![object isKindOfClass:[NSString class]]) {
        object = nil;
    }
    return object;
}

@end
