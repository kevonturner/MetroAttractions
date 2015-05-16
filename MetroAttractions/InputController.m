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

- (id)init
{
    self = [super init];
    self.location = [[VHLocationManager alloc] init];
    self.location.delegate = self;
    return self;
}



- (void)locationFound:(NSDictionary *)location
{
    
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)goButtonPressed:(id)sender {
}

- (IBAction)switchChanged:(id)sender {
}
@end
