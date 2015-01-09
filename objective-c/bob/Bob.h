#import <Cocoa/Cocoa.h>

@interface Bob : NSObject
- (NSString *)hey:(NSString *)phrase;
- (BOOL)isQuestion:(NSString *)phrase;
- (BOOL)isShout:(NSString *)phrase;
- (BOOL)isBlank:(NSString *)phrase;
@end



