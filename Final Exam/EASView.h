//
//  EASView.h
//  Etch-A-Sketch
//
//  Created by Arek Bolton on 5/5/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EASView : UIView {
    
    NSMutableArray *points;
    
    CGPoint currentPoint;
    
}

@property (nonatomic) CGFloat currentVerticalAngle;
@property (nonatomic) CGFloat currentHorizontalAngle;
@property (nonatomic) CGFloat currentVelocity;

- (void) saveCurrentPoint;
@end

