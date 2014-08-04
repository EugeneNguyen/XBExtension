//
//  NSObject+support.m
//  Couple
//
//  Created by binhnx on 9/21/13.
//  Copyright (c) 2013 libreteam. All rights reserved.
//

#import "NSObject+support.h"

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

@end
