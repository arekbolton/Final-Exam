//
//  EASViewController.m
//  Etch-A-Sketch
//
//  Created by Arek Bolton on 4/11/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "EASViewController.h"
#import "EASView.h"

@interface EASViewController ()

@end

@implementation EASViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    lastVelocity = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addVertical:(id)sender {
    UIRotationGestureRecognizer *s = sender;
    NSLog(@"%f radians vertical", s.rotation);
    if(lastVelocity >0 && s.velocity < 0){
        [self.esView saveCurrentPoint];
    }
    if (lastVelocity < 0 && s.velocity > 0) {
        [self.esView saveCurrentPoint];
    }
    [self.esView setCurrentVerticalAngle:s.rotation];
    [self.esView setCurrentVelocity:s.velocity];
    if(s.state == UIGestureRecognizerStateEnded)
    {
        [self.esView saveCurrentPoint];
    }
}

- (IBAction)addHorrizontal:(id)sender {
    UIRotationGestureRecognizer *s = sender;
    NSLog(@"%f radians horizontal",s.rotation);
    if (lastVelocity > 0 && s.velocity < 0) {
        [self.esView saveCurrentPoint];
    }
    if (lastVelocity < 0 && s.velocity > 0) {
        [self.esView saveCurrentPoint];
    }
    [self.esView setCurrentHorizontalAngle:s.rotation];
    [self.esView setCurrentVelocity:s.velocity];
    if (s.state == UIGestureRecognizerStateEnded) {
        [self.esView saveCurrentPoint];
    }
    lastVelocity = s.velocity;
}
@end
