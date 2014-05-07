//
//  SGView.m
//  Spirograph
//
//  Created by Arek Bolton on 5/6/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "SGView.h"

@implementation SGView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.k = .5;
        self.l = .5;
        self.stepSize = 0.2;
        self.numberOfSteps = 2000;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGFloat x,y;
    CGFloat R = 120;
    
    if (self.k == 0) {
        self.k = .5;
    }
    if (self.l == 0) {
        self.l = .5;
    }
    
    
    UIBezierPath *bz = [[UIBezierPath alloc] init];
    CGFloat t = 0.0;
    x = R * ((1.0 - self.k) * cos(t) + self.l * self.k * cos((1.0 - self.k) / self.k * t)) + 140;
    y = R * ((1.0 - self.k) * sin(t) - self.l * self.k * sin((1.0 - self.k) / self.k * t)) + 140;
    
    CGPoint p=CGPointMake(x, y);
    [bz moveToPoint:p];
    for (t=0; t<100; t=t+.01) {
        x = R * ((1.0 - self.k) * cos(t) + self.l * self.k * cos((1.0 - self.k) / self.k * t)) + 140;
        y = R * ((1.0 - self.k) * sin(t) - self.l * self.k * sin((1.0 - self.k) / self.k * t)) + 140;
        p=CGPointMake(x, y);
        [bz addLineToPoint:p];
    }
    [bz stroke];
}

@end