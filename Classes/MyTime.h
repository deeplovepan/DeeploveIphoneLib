//
//  MyTime.h
//  MyLib
//
//  Created by deeplove on 2010/8/7.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyTime : NSObject {

}
+(NSTimeInterval)getTimeDifferenceFromNow:(NSTimeInterval)time;
+(NSString*)getWeekString:(int)week;
+(NSString*)getMonthString:(int)month;
+(void)getDayMonthWeek:(NSDate*)date month:(int*)month
				   day:(int*)day week:(int*)week;
+(NSString*)getMinSecondStringFromSecond:(int)second;
+(NSString*)createFullTimeStringFromDate:(NSDate*)date;

@end
