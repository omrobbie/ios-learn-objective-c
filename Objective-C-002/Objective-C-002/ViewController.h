//
//  ViewController.h
//  Objective-C-002
//
//  Created by omrobbie on 12/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtWater;
@property (weak, nonatomic) IBOutlet UITextField *txtRatio;
@property (weak, nonatomic) IBOutlet UITextField *txtCoffee;

- (IBAction)btnCalculateTapped:(id)sender;

@end
