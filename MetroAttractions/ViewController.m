//
//  ViewController.m
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import "ViewController.h"
#import "VHLocationManager.h"

@interface ViewController ()
@property VHLocationManager *lcm;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"input"];
    cell.contentView.backgroundColor = [UIColor redColor];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
