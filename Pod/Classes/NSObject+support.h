//
//  NSObject+support.h
//  Couple
//
//  Created by binhnx on 9/21/13.
//  Copyright (c) 2013 libreteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NSLog(frmt, ...) DDLogInfo(frmt, ##__VA_ARGS__)

@interface NSObject (support)

- (void)showAlert:(NSString *)title message:(NSString *)message;
- (NSString *)recentTimestamp;

- (void)setupLog;

@end
