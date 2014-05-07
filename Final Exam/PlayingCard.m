//
//  PlayingCard.m
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;
@synthesize rank = _rank;

- (NSString *)contents {
    return [NSString stringWithFormat:@"%@%@",[self rankAsString],[self suit]];
}

+ (NSUInteger) maxRank {
    return [[self rankStrings] count] - 1;
}

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

+ (NSArray *)validSuits {
    return @[@"♣️", @"♠️", @"♥️", @"♦️"];
}

+ (NSArray *)rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

- (NSString *)rankAsString {
    return [PlayingCard rankStrings][self.rank];
}

- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (int)match:(NSArray *)otherCards {
    int score = 0;
    if ([otherCards count] == 1) {
        Card *otherCard = [otherCards firstObject];
        if (otherCard.rank == self.rank) {
            score = 4;
        } else if ([otherCard.suit isEqualToString:self.suit]) {
            score = 1;
        }
    }
    return score;
}

@end
