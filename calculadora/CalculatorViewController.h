//
//  XYZViewController.h
//  calculadora
//
//  Created by Endika Gutiérrez Salas on 5/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController {
    double      _value[2];
    NSInteger   _operator;
    NSUInteger  _currentOp;
}

@property (nonatomic, weak) IBOutlet UILabel * screen;

- (IBAction)numberPressed:(id)sender;
- (IBAction)operatorPressed:(id)sender;
- (IBAction)resultPressed:(id)sender;

@end
