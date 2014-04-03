//
//  Activity.h
//  DatabaseReader
//
//  Created by Taveras, Helson on 3/4/14.
//  Copyright (c) 2014 Taveras, Helson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Activity : NSObject
- (id)init;
@property int id;
@property (strong, nonatomic) NSString *eventName;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *date;
@property (nonatomic) BOOL signUp;
@property (strong, nonatomic) NSString *startTime;
@property (strong, nonatomic) NSString *endTime;
@property (strong, nonatomic) NSString *location;
@end
