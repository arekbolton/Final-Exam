//
//  FPButton.h
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FPButtonModel.h"

@interface FPButton : UIButton

@property (nonatomic) CGFloat originalX;

@property (nonatomic) CGFloat originalY;

-(void) setDefaultHome:(CGFloat)x yVal:(CGFloat)y;

@end
