//
//  AMSTimedTask.h
//  TimeTracker
//
//  Created by Alexander Supe on 23.03.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AMSTimedTask : NSObject

@property (nonatomic, copy)NSString *client;
@property (nonatomic, copy)NSString *summary;
@property (nonatomic)NSNumber *rate;
@property (nonatomic)NSNumber *hours;
@property (nonatomic, readonly)NSNumber *total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                          rate:(NSNumber *)rate
                         hours:(NSNumber *)hours;
@end

NS_ASSUME_NONNULL_END
