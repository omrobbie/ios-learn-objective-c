//
//  ViewController.m
//  Objective-C-003
//
//  Created by omrobbie on 12/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *cellID = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupList];
}

- (void)setupList {
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.textLabel.text = [NSString stringWithFormat:@"Item %li", (long)indexPath.row];
    return cell;
}

@end
