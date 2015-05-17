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
    UIView *loadingView = [UIView new];
    loadingView.frame = self.view.frame;
    UIActivityIndicatorView *loading = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    loading.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [loading startAnimating];
    [loadingView addSubview:loading];
    [self.view addSubview:loadingView];
}



@end
