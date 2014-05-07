//
//  Card.m
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize suit=_suit;

- (int)match:(NSArray *)otherCards {
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

- (NSString *)rankAsString {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"][self.rank];
}

- (void)setSuit:(NSString *)aSuit {
    if ([[Card validSuits] containsObject:aSuit]) {
        _suit = aSuit;
    }
}

- (NSString *)suit {
    return _suit;
}

+ (NSArray *)validSuits {
    return @[@"♦️",@"♥️",@"♠️",@"♣️"];
}

- (NSString *)contents {
    return [NSString stringWithFormat:@"%@%@",[self rankAsString],[self suit]];
}

@end
