//
//  VHLocationManager.h
//  Pinpoint
//
//  Created by Kevin Turner on 8/21/14.
//  Copyright (c) 2014 Kevin Turner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol VHLocationManagerDelegate <NSObject>
- (void)locationFound:(NSDictionary *)location;
@end


@interface VHLocationManager : NSObject<CLLocationManagerDelegate>
@property (strong, nonatomic) id <VHLocationManagerDelegate> delegate;

@property (strong, nonatomic) id vc;
- (void)findLocation;
- (void)stopFindingLocation;
@end
