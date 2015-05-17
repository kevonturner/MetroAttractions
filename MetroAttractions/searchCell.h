//
//  searchCell.h
//  MetroAttractions
//
//  Created by Kevin Turner on 5/17/15.
//  Copyright (c) 2015 Houston Hackathon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface searchCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;

@end
