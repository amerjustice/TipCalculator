//
//  ViewController.m
//  TipCalculator
//
//  Created by Susan Justice on 2016-05-13.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UISlider *tipPercentageSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tipPercentageSlider.minimumValue = 0.0;
    self.tipPercentageSlider.maximumValue = 100;
    [self.tipPercentageSlider setValue:15.0 animated:YES];
    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%1.2f %%", self.tipPercentageSlider.value];
    
    
    
}
- (IBAction)calculateTip:(id)sender {
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *billAmountNumber = [f numberFromString:self.billAmountTextField.text];
    
    float tip = self.tipPercentageSlider.value/100.0 * billAmountNumber.floatValue;
    
    self.tipAmount.text = [NSString stringWithFormat:@"%1.2f", tip]; 
    

    
    
    
    
    
}
- (IBAction)tipSlider:(id)sender {

    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%1.2f %%", self.tipPercentageSlider.value];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}

@end
