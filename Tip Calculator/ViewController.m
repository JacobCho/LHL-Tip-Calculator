//
//  ViewController.m
//  Tip Calculator
//
//  Created by Jacob Cho on 2014-10-17.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}



- (IBAction)calculateTip:(UIButton *)sender {
    
    double billAmount = [self.billAmountTextField.text integerValue];
    
    double tipPercent = [self.tipPercentageTextField.text floatValue] / 100;
    
    double tipAmount = billAmount * tipPercent;
    
    
    self.tipAmountLabel.text =  [NSString stringWithFormat:@"%.2f",tipAmount];
    
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    
    
    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%.2f", self.tipSlider.value];
}
@end
