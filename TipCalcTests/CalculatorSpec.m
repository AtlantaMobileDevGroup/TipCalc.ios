#import <Kiwi/Kiwi.h>
#import "Calculator.h"

SPEC_BEGIN(CalculatorSpec)
    describe(@"Calculator", ^{
        __block Calculator *calc;
        beforeEach(^{
            calc = [[Calculator alloc]init];
        });
        it(@"should allow the seting of Bill Amount", ^{
            calc.billAmount = 50.25;
            [theValue(calc.billAmount) shouldNotBeNil];
            [[theValue(calc.billAmount) should] equal: theValue(50.25)];
        });
        it(@"should allow the seting of the tip percentage", ^{
            calc.tipPercentage = 0.17;
            [theValue(calc.tipPercentage) shouldNotBeNil];
            //[[theValue(calc.tipPercentage) should] equal: theValue(0.17)];
            [[[NSString stringWithFormat:@"%.2f", calc.tipPercentage]should] equal:@"0.17"];
        });
        it(@"should calculate the amount of the tip", ^{
            calc.billAmount = 50.00;
            calc.tipPercentage = 0.17;
            [calc processTip];
            [theValue(calc.tipAmount) shouldNotBeNil];
            [[theValue(calc.tipAmount) should] equal: theValue(8.5)];
        });
        it(@"should calculate the total amount of the ticket", ^{
            calc.billAmount = 50.00;
            calc.tipPercentage = 0.17;
            [calc processTip];
            [theValue(calc.totalAmount) shouldNotBeNil];
            [[theValue(calc.totalAmount) should] equal: theValue(58.5)];
        });
    });
SPEC_END