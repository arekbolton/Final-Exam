//
//  FPButtonModel.m
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "FPButtonModel.h"

@implementation FPButtonModel



+(BOOL) canMove : (float) xHit :(float) yHit :(float) xEmpty :(float) yEmpty
{
    BOOL xTest = false;
    BOOL yTest = false;
    
    //test x coordinates
    if (xHit == xEmpty) {
        xTest = true;
    }
    else if (xHit >= (xEmpty - 50) && xHit <= (xEmpty + 50)) {
        xTest = true;
    }
    else{}
    
    //test y coordinates
    if (yHit == yEmpty) {
        yTest = true;
    }
    else if (yHit >= (yEmpty - 50) && yHit <= (yEmpty + 50)) {
        yTest = true;
    }
    else{}
    
    //test the diagonals
    //test the upper right diagonal
    if (xHit == (xEmpty + 50) && yHit == (yEmpty + 50)) {
        xTest = false;
        yTest = false;
        NSLog(@"upper right");
    }
    //test the lower right diagonal
    else if (xHit == (xEmpty + 50) && yHit == (yEmpty - 50))
    {
        xTest = false;
        yTest = false;
        NSLog(@"lower right");
    }
    //test the upper left diagonal
    else if (xHit == (xEmpty - 50) && yHit == (yEmpty + 50))
    {
        xTest = false;
        yTest = false;
        NSLog(@"lower right");
    }
    //test the lower left diagonal
    else if (xHit == (xEmpty - 50) && yHit == (yEmpty - 50))
    {
        xTest = false;
        yTest = false;
        NSLog(@"lower left");
    }
    
    
    
    //determine if can move in any direction
    if (xTest == true && yTest == true) {
        return true;
    }
    else{
        return false;
    }
}

@end
