//
//  DemoPushedViewController.m
//  TKGoogleAnalyticsExample
//
//  Created by Tim Kelly on 11/14/14.
//  Copyright (c) 2014 Tim Kelly. All rights reserved.
//

#import "DemoPushedViewController.h"
#import "TKGoogleAnalyticsUtil.h"

@interface DemoPushedViewController ()

@end

@implementation DemoPushedViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark IBAction

- (IBAction)trackEventTapped:(id)sender {

    
    GA_TRACK_EVENT(@"My Category", @"My Action", @"My Label", nil)


    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title Posting Event"
                                                  message: @"GA Demo"
                                                 delegate: nil
                                        cancelButtonTitle: @"OK"
                                        otherButtonTitles: nil];
    [alert show];
    
}


- (IBAction)trackTimingTapped:(id)sender {
    
    GA_PERFORMANCE_TIMER_START
    
    sleep(1);
    
    GA_PERFORMANCE_TIMER_STOP(@"My Timing Category", @"My Label", @"My Sub Category")
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Posted Timing Event"
                                                    message: @"GA Demo"
                                                   delegate: nil
                                          cancelButtonTitle: @"OK"
                                          otherButtonTitles: nil];
    [alert show];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
