//
//  ViewController.h
//  Objective-C-001
//
//  Created by omrobbie on 12/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *txtResult;

- (IBAction)btnClear:(id)sender;
- (IBAction)btnMario:(id)sender;

@end
