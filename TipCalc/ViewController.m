//
//  ViewController.m
//  TipCalc
//
//  Created by Allan Davis on 9/20/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.calc = [[Calculator alloc] init];
    self.tipValue.text = [NSString stringWithFormat:@"%.0f%%", self.tipPercentage.value * 100];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChaged:(id)sender {
    self.tipValue.text = [NSString stringWithFormat:@"%.0f%%", self.tipPercentage.value * 100];
    self.calc.billAmount = [self.billAmount.text floatValue];
    self.calc.tipPercentage = self.tipPercentage.value;
    [self.calc processTip];
    self.tipAmount.text = [NSString stringWithFormat:@"%.2f", self.calc.tipAmount];
    self.TotalAmount.text = [NSString stringWithFormat:@"%.2f", self.calc.totalAmount];
}
@end
