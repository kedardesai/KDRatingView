//
//  KDMainViewController.m
//  KDRatingView
//
//  Created by Purva Paldhe on 04/03/14.
//  Copyright (c) 2014 Kedar Desai. All rights reserved.
//

#import "KDMainViewController.h"
#import "KDRatingView.h"

@interface KDMainViewController ()

@end

@implementation KDMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    KDRatingView *myRatingView1 = [[KDRatingView alloc] initWithFrame:CGRectMake(10, 40, 200, 40)];
    [myRatingView1 rateKDRatingView:3.0 outOf:5.0];
    [self.view addSubview:myRatingView1];
    
    KDRatingView *myRatingView2 = [[KDRatingView alloc] initWithFrame:CGRectMake(10, 90, 60, 20)];
    [myRatingView2 rateKDRatingView:2.80 outOf:3.0];
    [self.view addSubview:myRatingView2];
    
    KDRatingView *myRatingView3 = [[KDRatingView alloc] initWithFrame:CGRectMake(10, 140, 200, 40)];
    [myRatingView3 rateKDRatingView:3.40 outOf:5.0];
    [self.view addSubview:myRatingView3];
    
    KDRatingView *myRatingView4 = [[KDRatingView alloc] initWithFrame:CGRectMake(10, 190, 120, 30)];
    [myRatingView4 rateKDRatingView:1.55 outOf:4.0];
    [self.view addSubview:myRatingView4];
    
    KDRatingView *myRatingView5 = [[KDRatingView alloc] initWithFrame:CGRectMake(10, 240, 200, 40)];
    [myRatingView5 rateKDRatingView:1.20 outOf:5.0];
    [self.view addSubview:myRatingView5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
