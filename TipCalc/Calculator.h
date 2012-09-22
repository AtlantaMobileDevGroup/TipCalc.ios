//
//  Calculator.h
//  TipCalc
//
//  Created by Allan Davis on 9/20/12.
//  Copyright (c) 2012 Cajun Code. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
@property float billAmount;
@property float tipPercentage;
@property float tipAmount;
@property float totalAmount;

- (void)processTip;
@end
