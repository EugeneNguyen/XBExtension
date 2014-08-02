//
//  NSObject+support.m
//  Couple
//
//  Created by binhnx on 9/21/13.
//  Copyright (c) 2013 libreteam. All rights reserved.
//

#import "NSObject+support.h"
#import "DDASLLogger.h"
#import "DDTTYLogger.h"
#import "DDNSLoggerLogger.h"

@implementation NSObject (support)

- (void)showAlert:(NSString *)title message:(NSString *)message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alert show];
}

- (NSString *)recentTimestamp
{
    return [@((int)[[NSDate date] timeIntervalSince1970]) stringValue];
}

- (void)setupLog
{
    
    
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [DDLog addLogger:[DDNSLoggerLogger sharedInstance]];
}

@end
