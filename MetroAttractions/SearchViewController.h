//
//  SearchViewController.h
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "searchCell.h"

@interface SearchViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property NSString *currentLocation;
@property NSString *timeToSpend;
@end
