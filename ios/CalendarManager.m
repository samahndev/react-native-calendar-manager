#import "CalendarManager.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>

@implementation CalendarManager

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(addEvent:(NSString *)name details:(NSDictionary *)details)
{
    NSString *location = [RCTConvert NSString:details[@"location"]];
    NSDate *time = [RCTConvert NSDate:details[@"time"]];
    RCTLogInfo(@"Pretending to create an event %@ at %@ on the %@", name, location, time);
}

RCT_REMAP_METHOD(
    findEvents,
    findEventsWithResolver:(RCTPromiseResolveBlock)resolve
    rejecter:(RCTPromiseRejectBlock)reject)
{
    NSArray *events = @[@"Event 1", @"Event 2", @"Event 3"];
    if (events) {
        RCTLogInfo(@"events avail");
        resolve(events);
    } else {
        RCTLogInfo(@"events NOT avail");
        reject(@"no_even;ts", @"There were no events");
    }
}

@end
