//
//  Test1bCardMatchingGame.h
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"


@interface Test1bCardMatchingGame : NSObject

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (void)chooseCardWithTag:(NSUInteger)tag;
- (PlayingCard *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;
@end
