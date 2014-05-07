//
//  SGViewController.m
//  Spirograph
//
//  Created by Arek Bolton on 5/6/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "SGViewController.h"
#import "SGView.h"
#import "HGView.h"


@interface SGViewController ()

@end

@implementation SGViewController


- (IBAction)redraw:(id)sender {
    self.spirographView.numberOfSteps = [self.numberOfStepsTextField.text integerValue];
    self.spirographView.stepSize = [self.stepSizeTextField.text floatValue];
    
    self.spirographView.k = self.kSlider.value;
    self.spirographView.l = self.lSlider.value;
    
    [self.spirographView setNeedsDisplay];
    [self.harmonigraphView setNeedsDisplay];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [_scrollView setPagingEnabled:YES];
    [self.stepSizeTextField setText:@".04"];
    [self.numberOfStepsTextField setText:@"2400"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidLayoutSubviews{
    self.scrollView.contentSize = CGSizeMake(560, 280);
}
@end
