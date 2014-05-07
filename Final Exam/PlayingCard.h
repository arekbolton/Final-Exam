//
//  PlayingCard.h
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, retain) NSString *suit;
@property (nonatomic) NSUInteger rank;
-(NSString *)rankAsString;
+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end
