//
//  Deck.h
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard.h"

@interface Deck : NSObject {
    PlayingCard *randomCard;
}

- (void)addCard:(PlayingCard *)aCard atTop:(BOOL)atTop;
- (PlayingCard *)drawRandomCard;
@end
