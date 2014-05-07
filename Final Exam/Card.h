//
//  Card.h
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic, strong) NSString *contents;
@property (nonatomic) BOOL matched;
@property (nonatomic) BOOL chosen;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
- (int)match:(NSArray *)otherCards;
@end
