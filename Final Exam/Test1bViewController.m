//
//  Test1bViewController.m
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "Test1bViewController.h"
#import "Test1bCardMatchingGame.h"

#import "Card.h"
#import "Deck.h"
#import "PlayingCard.h"

@interface Test1bViewController ()
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) Test1bCardMatchingGame *game;
@property (strong, nonatomic) NSMutableArray *cardsOnTable; //  array of Cards
@end

@implementation Test1bViewController

- (Test1bCardMatchingGame *) game {
    if (!_game) {
        _game = [[Test1bCardMatchingGame alloc] initWithCardCount:16 usingDeck:[self createDeck]];
    }
    return _game;
}

- (Deck *)deck {
    if (!_deck) {
        _deck = [[Deck alloc] init];
    }
    return _deck;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    _cardsOnTable = [[NSMutableArray alloc] init];
//    for (int i=0; i<16; i++) {
//        [_cardsOnTable addObject:[self.deck drawRandomCard]];
//    }
}

- (Deck *)createDeck {
    return [[Deck alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateUI {
    for (UIButton *button in self.cards) {
        
        Card *card = [self.game cardAtIndex:button.tag];
        [button setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [button setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        button.enabled = !card.matched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score %d",self.game.score];
}

- (UIImage *)backgroundImageForCard:(Card *)card {
    return card.chosen ? [UIImage imageNamed:@"front"] : [UIImage imageNamed:@"muhback"];
}


- (NSString *)titleForCard:(Card *)card {
    return card.chosen ? card.contents : @"";
}

//- (void)setFlipCount:(NSUInteger)flipCount {
//    self.flipCount = flipCount;
//}

- (IBAction)flipCard:(UIButton *)sender {
    
    int senderTag = [sender tag];
    [self.game chooseCardAtIndex:senderTag];
    [self updateUI];
    self.flipCount++;
}
@end
