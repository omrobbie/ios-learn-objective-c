//
//  ViewController.m
//  Objective-C-001
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
    [self marioWithLevels:10];
}

- (void)marioWithLevels: (int)level {
    NSMutableString *result = [[NSMutableString alloc] init];

    for (int i = 0; i <= level; i++) {
        for (int j = 0; j < i; j++) {
            [result appendString:@"#"];
        }
        [result appendString:@"\n"];
    }
    NSLog(@"%@", result);
    self.txtResult.text = result;
}

- (IBAction)btnClear:(id)sender {
    self.txtResult.text = @"";
}

- (IBAction)btnMario:(id)sender {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Enter a height" message:@"Mario" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionDone = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Done!");
        UITextField *textfield = alertVC.textFields[0];
        int height = [textfield.text intValue];
        [self marioWithLevels:height];
    }];

    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Input height here...";
        textField.borderStyle = UITextBorderStyleRoundedRect;
    }];

    [alertVC addAction:actionDone];

    [self presentViewController:alertVC animated:true completion:nil];
}

@end
