//
//  ASIHTTPRequest+log.m
//  Online-Coach
//
//  Created by Binh Nguyen Xuan on 8/2/14.
//  Copyright (c) 2014 libreteam. All rights reserved.
//

#import "ASIHTTPRequest+log.h"

@implementation ASIHTTPRequest (log)

- (void)reportFinished
{
    id object = [self.responseString objectFromJSONString];
    if (object)
    {
        NSLog(@"\nRequest successful\nJSON OK\nURL %@\n%@", [self url], [[self responseString] objectFromJSONString]);
    }
    else
    {
        NSLog(@"\nRequest successful\nJSON failed\nURL %@\n%@", [self url], [self responseString]);
    }
    
	if (delegate && [delegate respondsToSelector:didFinishSelector]) {
		[delegate performSelector:didFinishSelector withObject:self];
	}
    
#if NS_BLOCKS_AVAILABLE
	if(completionBlock){
		completionBlock();
	}
#endif
    
	if (queue && [queue respondsToSelector:@selector(requestFinished:)]) {
		[queue performSelector:@selector(requestFinished:) withObject:self];
	}
}

/* ALWAYS CALLED ON MAIN THREAD! */
- (void)reportFailure
{
    DDLogInfo(@"\nRequest failed\nNSURL: %@\nError: %@", [self url], [[self error] localizedDescription]);
	if (delegate && [delegate respondsToSelector:didFailSelector]) {
		[delegate performSelector:didFailSelector withObject:self];
	}
    
#if NS_BLOCKS_AVAILABLE
    if(failureBlock){
        failureBlock();
    }
#endif
    
	if (queue && [queue respondsToSelector:@selector(requestFailed:)]) {
		[queue performSelector:@selector(requestFailed:) withObject:self];
	}
}

@end
