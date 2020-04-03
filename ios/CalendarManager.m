#import "CalendarManager.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>

@implementation CalendarManager

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details)
{
    NSString *location = [RCTConvert NSString:details[@"location"]];
    NSDate *time = [RCTConvert NSDate:details[@"time"]];
    RCTLogInfo(@"Pretending to create an event %@ at %@", name, location, time);
}

RCT_EXPORT_METHOD(findEvents:(RCTResponseSenderBlock)callback)
{
    NSString *events = @"Event 1";
    callback(@[[NSNull null], events])
}

@end
