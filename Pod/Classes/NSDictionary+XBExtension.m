//
//  NSDictionary+XBExtension.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 5/19/15.
//
//

#import "NSDictionary+XBExtension.h"

@implementation NSDictionary (XBExtension)

+ (NSDictionary *)dictionaryWithContentsOfPlist:(NSString *)plist
{
    NSString *path = [[NSBundle mainBundle] pathForResource:plist ofType:@"plist"];
    return [NSDictionary dictionaryWithContentsOfFile:path];
}

@end
