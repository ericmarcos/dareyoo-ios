//
//  Created by Raimon Lapuente on 4/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYAuthor : NSObject

@property (nonatomic,copy,readonly) NSString *id;
@property (nonatomic,copy,readonly) NSString *url;
@property (nonatomic,copy,readonly) NSString *username;
@property (nonatomic,copy,readonly) NSString *pictureURL;
@property (nonatomic,copy,readonly) NSString *userBio;
@property (nonatomic,readonly) NSInteger fairPlay;
@property (nonatomic,readonly) NSInteger level;

@end
