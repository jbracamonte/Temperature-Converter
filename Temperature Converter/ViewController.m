//
//  ViewController.m
//  Temperature Converter
//
//  Created by Jawaharlal Bracamonte on 9/3/14.
//  Copyright (c) 2014 Barcode Digital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)convertToCelsius:(id)sender {
    CGFloat fahrenheit = self.textField.text.floatValue;
    CGFloat celsius = (fahrenheit - 32)*5.0/9.0;
    [self.textField setText:[NSString stringWithFormat:@"%.2f",celsius]];
}
- (IBAction)convertToFahrenheit:(id)sender {
    CGFloat celsius = self.textField.text.floatValue;
    CGFloat fahrenheit = (celsius * 9.0/5.0) + 32;
    [self.textField setText:[NSString stringWithFormat:@"%.2f",fahrenheit]];
}

@end
