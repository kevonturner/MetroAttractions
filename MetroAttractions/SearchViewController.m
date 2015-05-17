//
//  SearchViewController.m
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import "SearchViewController.h"

@implementation SearchViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
  
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    searchCell *cell = [tableView dequeueReusableCellWithIdentifier:@"search"];
    
    return cell;
}











@end
