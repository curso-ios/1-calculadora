//
//  XYZViewController.m
//  calculadora
//
//  Created by Endika Gutiérrez Salas on 5/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

@synthesize screen = _screen;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)numberPressed:(UIButton *)sender
{
    _value[_currentOp] *= 10;
    _value[_currentOp] += sender.tag;
    self.screen.text = [NSString stringWithFormat:@"%f", _value[_currentOp]];
}

- (IBAction)operatorPressed:(UIButton *)sender
{
    if (_currentOp > 0) { 
        // Si ya habiamos elegido un operador se calcula el resultado y se alamacena en el primer valor
        [self resultPressed:nil];
    }
    
    self.screen.text = @"0.0";
    
    _value[1] = 0;
    _operator = sender.tag;
    _currentOp = 1;
}

- (IBAction)resultPressed:(id)sender
{
    switch (_operator) {
        case 0:
            _value[0] = _value[0] + _value[1];
            break;
        case 1:
            _value[0] = _value[0] - _value[1];
            break;
        case 2:
            _value[0] = _value[0] * _value[1];
            break;
        case 3:
            _value[0] = _value[0] / _value[1];
            break;
    }
    self.screen.text = [NSString stringWithFormat:@"%f", _value[0]];
    
    _value[1] = 0;
    _currentOp = 0;
}

@end
