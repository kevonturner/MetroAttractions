//
//  InputController.h
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VHLocationManager.h"

@interface InputController : UITableViewCell<VHLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UIView *locationLabel;
@property (weak, nonatomic) IBOutlet UITextField *destinationField;
- (IBAction)goButtonPressed:(id)sender;
- (IBAction)switchChanged:(id)sender;

@end
