//
//  Created by Raimon Lapuente on 4/12/14.
//  Copyright (c) 2014 Dareyoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYAuthor : NSObject

@property (nonatomic,strong,readonly) NSString *id;
@property (nonatomic,strong,readonly) NSString *url;
@property (nonatomic,strong,readonly) NSString *username;
@property (nonatomic,strong,readonly) NSString *pictureURL;
@property (nonatomic,strong,readonly) NSString *userBio;
@property (nonatomic,readonly) NSInteger fairPlay;
@property (nonatomic,readonly) NSInteger level;

@end
