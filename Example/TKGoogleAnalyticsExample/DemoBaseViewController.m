//
//  DemoBaseViewController.m
//  TKGoogleAnalyticsExample
//
//  Created by Tim Kelly on 11/14/14.
//  Copyright (c) 2014 Tim Kelly. All rights reserved.
//

#import "DemoBaseViewController.h"
#import "TKGoogleAnalyticsUtil.h"

@interface DemoBaseViewController ()

@end

@implementation DemoBaseViewController

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
    // Do any additional setup after loading the view.
    
    GA_TRACK_CLASS
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
