//
//  ViewController.m
//  MetroAttractions
//
//  Created by Kevin Turner on 5/16/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import "ViewController.h"
#import "VHLocationManager.h"

@interface ViewController ()
@property VHLocationManager *lcm;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    NSString *filePath =  [[NSBundle mainBundle] pathForResource:@"stops" ofType:@"json"];
    NSLog(@"called");
    NSData *stopsData = [NSData dataWithContentsOfFile:filePath];
    NSArray *stopsJson = [NSJSONSerialization JSONObjectWithData:stopsData options:0 error:nil];
    NSLog(stopsJson);
    AppDelegate *appDelegate =
    [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context =
    [appDelegate managedObjectContext];
    NSManagedObject *newContact;
    newContact = [NSEntityDescription
                  insertNewObjectForEntityForName:@"Stops"
                  inManagedObjectContext:context];
    
    for(NSDictionary *stop in stopsJson){
        [newContact setValue:stop[@"stop_lat"] forKey:@"stop_lat"];
        [newContact setValue:stop[@"stop_long"] forKey:@"stop_long"];
        [newContact setValue:stop[@"stop_name"] forKey:@"stop_name"];
        [newContact setValue:@"" forKey:@"route_time"];
       
    }
    
    NSError *error;
    [context save:&error];
    
    /*
    AppDelegate *appDelegate =
    [[UIApplication sharedApplication] delegate];
    

    NSManagedObjectContext *context =
    [appDelegate managedObjectContext];
    NSManagedObject *newContact;
    newContact = [NSEntityDescription
                  insertNewObjectForEntityForName:@"Stops"
                  inManagedObjectContext:context];
    [newContact setValue: _name.text forKey:@"name"];
    [newContact setValue: _address.text forKey:@"address"];
    [newContact setValue: _phone.text forKey:@"phone"];
   
    NSError *error;
    [context save:&error];
    */
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    InputController *cell = [tableView dequeueReusableCellWithIdentifier:@"input"];
    cell.vc = self;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    return cell;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SearchViewController *scv = (SearchViewController *)segue.destinationViewController;
    scv.timeToSpend = self.time;
    scv.currentLocation = self.currentLocation;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
