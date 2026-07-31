#import <Foundation/Foundation.h>

%hook NSUserDefaults
- (BOOL)boolForKey:(NSString *)defaultName {
    if ([defaultName isEqualToString:@"nsfw_toggle"] || [defaultName isEqualToString:@"nsfw_enabled"]) {
        return YES;
    }
    return %orig;
}
%end
