//
//  KJUtil.m
//  Utilities
//
//  Created by Kenji on 8/5/14.
//  Copyright (c) 2014 Kenji. All rights reserved.
//

#import "KJUtil.h"

@implementation KJUtil

#pragma mark - NSDate Utils

static NSDateFormatter *dateFormatter = nil;

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
        }
    });
    [dateFormatter setDateFormat:format];
    return [dateFormatter dateFromString:dateString];
}

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format andTimeZone:(NSString *)timeZone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
        }
    });
    [dateFormatter setDateFormat:format];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:timeZone]];
    return [dateFormatter dateFromString:dateString];
}

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format andSecondsFromGMT:(NSInteger)seconds
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
        }
    });
    [dateFormatter setDateFormat:format];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:seconds]];
    return [dateFormatter dateFromString:dateString];
}

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
        }
    });
    [dateFormatter setDateFormat:format];
    return [dateFormatter stringFromDate:date];
}

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format andTimeZone:(NSString *)timeZone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
        }
    });
    [dateFormatter setDateFormat:format];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    return [dateFormatter stringFromDate:date];
}

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format andSecondsFromGMT:(NSInteger)seconds
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (dateFormatter == nil) {
            dateFormatter = [[NSDateFormatter alloc] init];
        }
    });
    [dateFormatter setDateFormat:format];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:seconds]];
    return [dateFormatter stringFromDate:date];
}

@end
