//
//  EASViewController.h
//  Etch-A-Sketch
//
//  Created by Arek Bolton on 4/11/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EASView.h"

@interface EASViewController : UIViewController {
    CGFloat lastVelocity;
}

@property (nonatomic, weak) IBOutlet EASView *esView;

- (IBAction)addVertical:(id)sender;

- (IBAction)addHorrizontal:(id)sender;

@end
