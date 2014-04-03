//
//  Activity.m
//  DatabaseReader
//
//  Created by Taveras, Helson on 3/4/14.
//  Copyright (c) 2014 Taveras, Helson. All rights reserved.
//

#import "Activity.h"

@implementation Activity
- (id)init {
    
}

- (void) setId:(int)id: (int) id {
    self.id = id;
}

-(void) setEventName:(NSString *)eventName {
    self.eventName = eventName;
}

-(void) setDate:(NSString *)date {
    self.date = date;
}

-(void) setSignUp:(BOOL)signUp {
    self.signUp = signUp;
}

-(void) setStartTime:(NSString *)startTime {
    self.startTime = startTime;
}

-(void) setLocation:(NSString *)location {
    self.location = location;
}

-(void ) setEndTime:(NSString *)endTime {
    self.endTime = endTime;
}

-(void) setDescription:(NSString *)description {
    self.description = description;
}


@end
