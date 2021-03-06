//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSString *racecar=@"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
    
    return YES;
}


- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations= @[@".",@",",@"!",@"?",@":",@";"];
    NSString *withoutPunctuation=[string copy];
    for (NSUInteger i=0; i<[punctuations count]; i++){
        NSString *punctuation= punctuations[i];
        withoutPunctuation= [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString *spaceless= [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase= [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    return stringIsEqualToReverse;
}

- (NSString*)stringByReversingString:(NSString*)string;{
    NSString*result=@"";
    
    for(NSUInteger i=[string length];i>0;i--) {
        NSUInteger index= i-1;
        unichar c = [string characterAtIndex:index];
        result=[result stringByAppendingFormat:@"%c", c];
    }
    return result;
}
/**
 
 * Implement your methods here.
 
 */

@end
