//
//  InputController.m
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import "InputController.h"


@interface InputController ()
@property VHLocationManager *location;
@end


@implementation InputController


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    self.location = [[VHLocationManager alloc] init];
    NSLog(@"input created");
    self.location.delegate = self;
    [self.location findLocation];
    return self;
}


- (void)locationFound:(NSDictionary *)location
{
    self.currentLocationLabel.text = location[@"name"];
    NSLog(@"location: %@", location);
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)goButtonPressed:(id)sender {
    NSString *searchString = self.destinationField.text;
    NSString *currentLocation = self.currentLocationLabel.text;
    BOOL hasBike = [self.bikeSwitch isOn];
  
}

- (IBAction)switchChanged:(id)sender {
}
@end
