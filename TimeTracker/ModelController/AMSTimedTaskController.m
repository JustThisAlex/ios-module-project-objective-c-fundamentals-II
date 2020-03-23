//
//  AMSTimedTaskController.m
//  TimeTracker
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "AMSTimedTaskController.h"
#import "AMSTimedTask.h"

@implementation AMSTimedTaskController

- (instancetype)init {
    if (self = [super init]) {
        _tasks = [NSMutableArray new];
    }
    return self;
}

- (void)createTimedTaskWithClient:(NSString *)client summary:(NSString *)summary rate:(NSNumber *)rate hours:(NSNumber *)hours {
    [_tasks addObject:[[AMSTimedTask alloc] initWithClient:client summary:summary rate:rate hours:hours]];
}

@end
