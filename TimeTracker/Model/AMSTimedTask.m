//
//  AMSTimedTask.m
//  TimeTracker
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "AMSTimedTask.h"

@implementation AMSTimedTask

- (instancetype)initWithClient:(NSString *)client summary:(NSString *)summary rate:(NSNumber *)rate hours:(NSNumber *)hours {
    if (self = [super init]) {
        _client = client;
        _summary = summary;
        _rate = rate;
        _hours = hours;
    }
    return self;
}

- (NSNumber *)total {
    return [NSNumber numberWithDouble:(_rate.doubleValue * _hours.doubleValue)];
}

@end
