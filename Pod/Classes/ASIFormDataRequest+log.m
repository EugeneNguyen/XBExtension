//
//  ASIFormDataRequest+log.m
//  Pods
//
//  Created by Binh Nguyen Xuan on 8/4/14.
//
//

#import "ASIFormDataRequest+log.h"
#import "JSONKit.h"

@interface ASIFormDataRequest (logextra)

@property (retain) NSMutableArray *postData;

@end

@implementation ASIFormDataRequest (log)

- (void)reportFinished
{
    id object = [self.responseString objectFromJSONString];
    if (object)
    {
        NSLog(@"\nRequest successful\nJSON OK\nURL %@\nSend %@\nReceive %@", [self url], [self postData], [[self responseString] objectFromJSONString]);
    }
    else
    {
        NSLog(@"\nRequest successful\nJSON failed\nURL %@\nSend %@\nReceive %@", [self url], [self postData], [self responseString]);
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
    NSLog(@"\nRequest failed\nNSURL: %@\nSend: %@\nError: %@", [self url], [self postData], [[self error] localizedDescription]);
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
