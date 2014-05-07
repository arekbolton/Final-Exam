//
//  SGViewController.h
//  Spirograph
//
//  Created by Arek Bolton on 5/6/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SGView.h"
#import "HGView.h"

@interface SGViewController : UIViewController

//Views
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet SGView *spirographView;
@property (weak, nonatomic) IBOutlet HGView *harmonigraphView;

//Stuff in the views
@property (weak, nonatomic) IBOutlet UISlider *lSlider;
@property (weak, nonatomic) IBOutlet UISlider *kSlider;
@property (weak, nonatomic) IBOutlet UITextField *numberOfStepsTextField;
@property (weak, nonatomic) IBOutlet UITextField *stepSizeTextField;

- (IBAction)redraw:(id)sender;


@end
