//
//  Test1bCardMatchingGame.m
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "Test1bCardMatchingGame.h"
#import "PlayingCard.h"

@interface Test1bCardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards;
@end
@implementation Test1bCardMatchingGame

- (NSMutableArray *)cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck {
    self = [super init];
    if (self) {
        // setup
        for (int i = 0; i < count; i++) {
            PlayingCard *card = [deck drawRandomCard];
            if (!card) {
                self = nil;
                break;
            } else {
                [self.cards addObject:card];
            }
        }
    }
    return self;
}

- (PlayingCard *)cardAtIndex:(NSUInteger)index {
    return (index < [self.cards count]? [self.cards objectAtIndex:index] : nil);
}
#define MISMATCH_PENALTY 2
#define COST_TO_CHOOSE 1
#define MATCH_BONUS 4

- (void) chooseCardWithTag:(NSUInteger)tag {
    
}
- (void)chooseCardAtIndex:(NSUInteger)index {
    
    PlayingCard *card = [self cardAtIndex:index];
    
    if (!card.matched) {
        if (card.chosen) {
            card.chosen = NO;
            
        } else {
            for (PlayingCard *otherCard in self.cards) {
                if (otherCard.chosen && !otherCard.matched) {
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore) {
                        self.score += matchScore * MATCH_BONUS;
                        otherCard.matched = YES;
                        card.matched = YES;
                    } else {
                        self.score -= MISMATCH_PENALTY;
                        otherCard.chosen = NO;
                    }
                    break;
                }
            }
            self.score -= COST_TO_CHOOSE;
            card.chosen = YES;
        }
    }
}
@end
