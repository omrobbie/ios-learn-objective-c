//
//  ViewController.m
//  Objective-C-002
//
//  Created by omrobbie on 12/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btnCalculateTapped:(id)sender {
    float water = [[self.txtWater text] floatValue];
    float ratio = [[self.txtRatio text] floatValue];

    NSLog(@"water: %f, ratio: %f", water, ratio);

    float coffee = water / ratio;
    NSLog(@"coffee: %f", coffee);

    NSString *coffeeText = [NSString stringWithFormat:@"%f", coffee];
    self.txtCoffee.text = coffeeText;
}

@end
