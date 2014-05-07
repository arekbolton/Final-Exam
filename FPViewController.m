//
//  FPViewController.m
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "FPViewController.h"

@interface FPViewController ()

@end

@implementation FPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    //FPButton *b;
    moveCounter = 0;
    
    [_scoreLabel setText:[NSString stringWithFormat:@"%i", moveCounter]];
    [self randomize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hit:(FPButton *)sender{
    
    FPButton *empBtn;
    BOOL test = false;
    float x = 0;
    float y = 0;
    empBtn = [_slidingCell objectAtIndex:15];
    test = [FPButtonModel canMove:sender.frame.origin.x :sender.frame.origin.y :empBtn.frame.origin.x :empBtn.frame.origin.y];
    
    x = sender.frame.origin.x;
    y = sender.frame.origin.y;
    
    if (test == true){
        
        [UIView animateWithDuration:.75 animations:^{
            sender.frame = CGRectMake(empBtn.frame.origin.x, empBtn.frame.origin.y, sender.frame.size.width, sender.frame.size.height);
            empBtn.frame = CGRectMake(x, y, empBtn.frame.size.width, empBtn.frame.size.height);
        }];
        //empBtn.frame = CGRectMake(newX, newY, empBtn.frame.size.width, empBtn.frame.size.height);
        
        moveCounter++;
        [_scoreLabel setText:[NSString stringWithFormat:@"%i", moveCounter]];
    }
    else{}
    
    
}

- (IBAction)reset:(id)sender {
    FPButton *btn;
    for (int j = 0; j < 16; j++) {
        btn = [_slidingCell objectAtIndex:j];
        
        if (btn.tag == 1)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(50.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 2)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(100.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 3)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(150.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 4)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(200.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 5)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(50.0, 100.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 6)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(100.0, 100.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 7)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(150.0, 100.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 8)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(200.0, 100.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 9)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(50.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 10)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(100.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 11)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(150.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 12)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(200.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 13)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(50.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 14)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(100.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 15)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(150.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 16)
        {
            [UIView animateWithDuration:.1 animations:^{
                btn.frame = CGRectMake(200.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else{}
    }
    
    
    moveCounter = 0;
    [_scoreLabel setText:[NSString stringWithFormat:@"%i", moveCounter]];
    [self randomize];
}

- (IBAction)solve:(FPButton*)sender {
    FPButton *btn;
    
    for (int j = 0; j < 16; j++) {
        btn = [_slidingCell objectAtIndex:j];
        
        if (btn.tag == 1)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(50.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 2)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(100.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 3)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(150.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 4)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(200.0, 50.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 5)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(50.0, 100.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 6)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(100.0, 100.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 7)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(150.0, 100.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 8)
        {
            [UIView animateWithDuration:.75 animations:^{
                 btn.frame = CGRectMake(200.0, 100.0, btn.frame.size.width, btn.frame.size.height);
             }];
        }
        else if (btn.tag == 9)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(50.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 10)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(100.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 11)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(150.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 12)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(200.0, 150.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 13)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(50.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 14)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(100.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 15)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(150.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else if (btn.tag == 16)
        {
            [UIView animateWithDuration:.75 animations:^{
                btn.frame = CGRectMake(200.0, 200.0, btn.frame.size.width, btn.frame.size.height);
            }];
        }
        else{}
    }
    
}

-(void) randomize
{
    int r = 0;
    FPButton *btnOne;
    FPButton *btnTwo;
    float x, y;
    x = 0.0;
    y = 0.0;
    for(int k = 0; k<5; k++) {
        
    for(int j = 0; j<16; j++) {
        r =arc4random() % 15;
        //seting up the positional exchange
        btnOne = [_slidingCell objectAtIndex:j];
        btnTwo = [_slidingCell objectAtIndex:r];
        x = btnOne.frame.origin.x;
        y = btnOne.frame.origin.y;
        
        //moveing the cells here
        [UIView animateWithDuration:.25 animations:^{
            btnOne.frame = CGRectMake(btnTwo.frame.origin.x, btnTwo.frame.origin.y, btnOne.frame.size.width, btnOne.frame.size.height);
            btnTwo.frame = CGRectMake(x, y, btnTwo.frame.size.width, btnTwo.frame.size.width);
        }];
    }
    }
    
    
}
@end
