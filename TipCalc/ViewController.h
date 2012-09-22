//
//  ViewController.h
//  TipCalc
//
//  Created by Allan Davis on 9/20/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *billAmount;
@property (weak, nonatomic) IBOutlet UISlider *tipPercentage;
@property (weak, nonatomic) IBOutlet UILabel *tipValue;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;
@property (weak, nonatomic) IBOutlet UILabel *TotalAmount;
@property Calculator *calc;
- (IBAction)sliderChaged:(id)sender;
@end
