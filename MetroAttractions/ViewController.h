//
//  ViewController.h
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputController.h"
#import <CoreData/CoreData.h>
#import <Parse/Parse.h>
#import "SearchViewController.h"

#import "AppDelegate.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSString *currentLocation;
@property NSString * time;

@end

