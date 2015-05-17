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
    AppDelegate *appDelegate =
    [[UIApplication sharedApplication] delegate];
    NSString *filePath =  [[NSBundle mainBundle] pathForResource:@"stops" ofType:@"json"];
    NSLog(@"called");
    NSData *stopsData = [NSData dataWithContentsOfFile:filePath];
    NSArray *stopsJson = [NSJSONSerialization JSONObjectWithData:stopsData options:0 error:nil];
    
    NSManagedObjectContext *context =
    [appDelegate managedObjectContext];
    NSManagedObject *newContact;
    newContact = [NSEntityDescription
                  insertNewObjectForEntityForName:@"Stops"
                  inManagedObjectContext:context];
    
    for(NSDictionary *stop in stopsJson){
        
    }
    
   
    
    NSEntityDescription *entityDesc =
    [NSEntityDescription entityForName:@"Stops"
                inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDesc];
    
    
    
    NSManagedObject *matches = nil;
    
    NSError *error;
    NSArray *objects = [context executeFetchRequest:request
                                              error:&error];
    
    if ([objects count] == 0) {
        
    } else {
        
        for(NSManagedObject *ob in objects){
          NSString* lat =  [ob valueForKey:@"stop_lat"];
           NSString*lon = [ob valueForKey:@"stop_long"];
            NSLog(@"lat: %@ long: %@", lat, lon);
            NSLog(@"ob.count: %lu", (unsigned long)objects.count);
        }
        
    }
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
