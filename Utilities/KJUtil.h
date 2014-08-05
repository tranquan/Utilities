//
//  KJUtil.h
//  Utilities
//
//  Created by Kenji on 8/5/14.
//  Copyright (c) 2014 Kenji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KJUtil : NSObject

// NSDate Utils

+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format;
+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format andTimeZone:(NSString *)timeZone;
+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)format andSecondsFromGMT:(NSInteger)seconds;
+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format;
+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format andTimeZone:(NSString *)timeZone;
+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format andSecondsFromGMT:(NSInteger)seconds;

@end
