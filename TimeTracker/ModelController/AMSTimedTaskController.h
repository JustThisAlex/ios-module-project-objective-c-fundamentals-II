//
//  AMSTimedTaskController.h
//  TimeTracker
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AMSTimedTaskController : NSObject

@property NSMutableArray *tasks;

- (void)createTimedTaskWithClient:(NSString *)client
                          summary:(NSString *)summary
                             rate:(NSNumber *)rate
                            hours:(NSNumber *)hours;


@end

NS_ASSUME_NONNULL_END
