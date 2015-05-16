//
//  VHLocationManager.m
//  Pinpoint
//
//  Created by Kevin Turner on 8/21/14.
//  Copyright (c) 2014 Kevin Turner. All rights reserved.
//

#import "VHLocationManager.h"

@interface VHLocationManager ()
@property (strong, nonatomic) CLLocationManager *manager;
@property (strong, nonatomic) CLGeocoder *coder;
@property (strong, nonatomic) CLPlacemark *placemark;

@end

@implementation VHLocationManager

- (id)init
{
    self = [super init];
    self.manager = [[CLLocationManager alloc]init];
    self.coder = [[CLGeocoder alloc]init];
    self.manager.desiredAccuracy = kCLLocationAccuracyBest;
    
    self.manager.delegate = self;
    [self.manager requestWhenInUseAuthorization];
        
    
    return self;
}



- (void)findLocation
{
    [self.manager startUpdatingLocation];
}

- (void)stopFindingLocation
{
    [self.manager stopUpdatingLocation];
}




- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
        NSLog(@"called");
    CLLocation *location = [locations lastObject];
    NSLog(@"delegate works");
    if(location != nil){
        [self.coder reverseGeocodeLocation: location completionHandler:^(NSArray *placemarks, NSError *error){
            if(!error && placemarks.count > 0){
                self.placemark = [placemarks lastObject];
                NSLog(@"current Location: %@", self.placemark.name);
                NSLog(@"current location: %@", self.placemark.country);
                 //NSString * country = self.placemark.country;
                NSString * city = self.placemark.locality;
                NSString * locationName = self.placemark.name;
                NSString* state = self.placemark.administrativeArea;
                NSString * street = [NSString stringWithFormat:@"%@ %@",
                                     self.placemark.subThoroughfare, self.placemark.thoroughfare];
                NSLog(@"sub-throughfare: %@", self.placemark.subThoroughfare);
                NSDictionary *locationDictionary = [NSDictionary dictionaryWithObjectsAndKeys:street, @"street", city, @"city", state , @"state", locationName, @"name", nil];
                [self.delegate locationFound:locationDictionary];
                
            }
            
            
        }];
    }

}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"failure: %@", error);
}








@end