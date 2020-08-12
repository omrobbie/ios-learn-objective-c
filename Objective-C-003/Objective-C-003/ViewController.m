//
//  ViewController.m
//  Objective-C-003
//
//  Created by omrobbie on 12/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

#import "ViewController.h"
#import "Course.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray<Course *> *courses;

@end

@implementation ViewController

NSString *cellID = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupList];
    [self fetchData];
}

- (void)setupList {
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellID];
}

- (void)fetchData {
    NSLog(@"Fetching data...");

    NSString *urlString = @"https://api.letsbuildthatapp.com/jsondecodable/courses";
    NSURL *url = [NSURL URLWithString:urlString];

    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"Data fetched!");

        NSArray *coursesJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];

        NSMutableArray<Course *> *courses = NSMutableArray.new;
        for (NSDictionary *courseDict in coursesJSON) {
            NSString *name = courseDict[@"name"];
            Course *course = Course.new;
            course.name = name;
            [courses addObject:course];
        }

        self.courses = courses;
    }] resume];
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
