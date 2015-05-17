//
//  InputController.h
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VHLocationManager.h"
#import "ViewController.h"

@class ViewController;
@interface InputController : UITableViewCell<VHLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UISwitch *bikeSwitch;
@property (weak, nonatomic) IBOutlet UILabel *currentLocationLabel;
@property (weak, nonatomic) IBOutlet UITextField *destinationField;
@property ViewController *vc;
- (IBAction)goButtonPressed:(id)sender;

@end
