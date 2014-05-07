//
//  FPViewController.h
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FPButton.h"
#import "FPButtonModel.h"

@interface FPViewController : UIViewController
{
    int moveCounter;
}

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *slidingCell;

- (IBAction)hit:(id)sender;

- (IBAction)reset:(id)sender;

- (IBAction)solve:(id)sender;

- (void) randomize;

@end
