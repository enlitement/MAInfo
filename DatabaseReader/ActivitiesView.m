//
//  ActivitiesView.m
//  DatabaseReader
//
//  Created by Taveras, Helson on 3/4/14.
//  Copyright (c) 2014 Taveras, Helson. All rights reserved.
//

#import "ActivitiesView.h"
#import "Activity.h"

@interface ActivitiesView ()

@end

@implementation ActivitiesView

//http://www.appcoda.com/fetch-parse-json-ios-programming-tutorial/ 
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void) printURL {
    NSLog(@"Getting from URL...");
    NSString *url = @"http://www.saa.ma1geek.org/getActivities.php?date=2014-03-21";
    
    NSURL *URL = [NSURL URLWithString:url];
    NSError *error;
    NSString *stringFromFileAtURL = [[NSString alloc]
                                     initWithContentsOfURL:URL
                                     encoding:NSUTF8StringEncoding
                                     error:&error];
    if (stringFromFileAtURL == nil) {
        // an error occurred
        NSLog(@"Error reading file at %@\n%@",
              URL, [error localizedFailureReason]);
    }
    else {
        // Label is just a UILabel in the View Controller to show the data.
        NSLog(@"URL:,%@", stringFromFileAtURL);
        
    }
}
- (void)viewDidLoad
{
    
    [self printURL];
    Activity *activity = [[Activity alloc] init];
    NSMutableArray *jsonArray = [[NSMutableArray alloc] init];
    
    // URL of the activities
    NSURL * url = [[NSURL alloc] initWithString:@"http://www.saa.ma1geek.org/getActivities.php?date=2014-03-21"];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url
                                                cachePolicy:NSURLRequestReturnCacheDataElseLoad
                                            timeoutInterval:30];
    
    NSData *urlData;
    NSURLResponse *response;
    NSError *error;
    
    urlData = [NSURLConnection sendSynchronousRequest:urlRequest
                                    returningResponse:&response
                                                error:&error];
    NSLog(@"%@", urlData);
    
    NSDictionary *jsonDic = [NSJSONSerialization
                             JSONObjectWithData:urlData
                             options:0
                             error:&error];
    
    NSLog(@"%@", jsonDic);
    NSDictionary *activityDic = [jsonDic objectForKey:@"Activities"];
    
    NSLog(@"Number of activities: %i", [activityDic count]);
    NSLog(@"Description: %@", [activityDic description]);
    
    for(NSDictionary *activities in activityDic){
        NSString *holdString = [NSString stringWithFormat:@"%@", [activityDic objectForKey:@"eventName"]];
        NSLog(@"EventName: %@", holdString);
        [jsonArray addObject:holdString];
    }
    NSLog(@"jsonArray: %@", jsonArray);    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
