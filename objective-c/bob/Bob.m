//
//  Bob.m
//  
//
//  Created by Jason Lewis on 1/8/15.
//
//

#import <Foundation/Foundation.h>
#import "Bob.h"

@implementation Bob

NSString *shoutResponse = @"Whoa, chill out!";
NSString *questionResponse = @"Sure.";
NSString *blankResponse = @"Fine. Be that way!";
NSString *defaultResponse = @"Whatever.";

- (BOOL)isShout:(NSString *)phrase {
    if ([[phrase uppercaseString] isEqualToString:phrase ]) {
        return YES;
    } else {
        return NO;
    }
}


- (NSString*) hey: (NSString*) phrase {
    
}

@end
