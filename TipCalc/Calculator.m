//
//  Calculator.m
//  TipCalc
//
//  Created by Allan Davis on 9/20/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
//@synthesize billAmount = _billAmount;
-(void)processTip{
    self.tipAmount = self.billAmount * self.tipPercentage;
    self.totalAmount = self.billAmount + self.tipAmount;
}
@end
