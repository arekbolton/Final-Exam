//
//  Test1bViewController.h
//  Test1b
//
//  Created by Arek Bolton on 5/7/2014.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Test1bViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cards;

- (IBAction)flipCard:(UIButton *)sender;

@property (nonatomic) NSUInteger flipCount;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end
