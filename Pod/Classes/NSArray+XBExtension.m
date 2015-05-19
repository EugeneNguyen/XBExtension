//
//  NSArray+XBExtension.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 5/19/15.
//
//

#import "NSArray+XBExtension.h"

@implementation NSArray (XBExtension)

+ (NSArray *)arrayWithContentsOfPlist:(NSString *)plist
{
    NSString *path = [[NSBundle mainBundle] pathForResource:plist ofType:@"plist"];
    return [NSArray arrayWithContentsOfFile:path];
}

@end
