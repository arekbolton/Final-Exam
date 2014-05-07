//
//  Deck.m
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "Deck.h"
#import "Card.h"
#import "PlayingCard.h"


@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *)cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(id)init {
    self = [super init];
    if (self) {
        // set up deck
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank ++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

- (void)addCard:(PlayingCard *)aCard atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:aCard atIndex:0];
    } else {
        [self.cards addObject:aCard];
    }
}

- (void)addCard:(PlayingCard *)aCard {
    [self addCard:aCard atTop:NO];
}

- (Card *)drawRandomCard {
    if ([self.cards count]) {
        unsigned index = arc4random() %  [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];

    }
    return randomCard;
}

@end
