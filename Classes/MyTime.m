//
//  MyTime.m
//  MyLib
//
//  Created by deeplove on 2010/8/7.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyTime.h"


@implementation MyTime

// return unit in second
+(NSTimeInterval)getTimeDifferenceFromNow:(NSTimeInterval)time
{
	NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
	NSDate *currentDate = [NSDate date];
	NSTimeInterval difference = [date timeIntervalSinceDate:currentDate];
	return difference;
}


+(NSString*)getMinSecondStringFromSecond:(int)second
{
	NSString *retString;
	int min = second/60;
	int sec = second%60;
	retString = [NSString stringWithFormat:@"%d:%02d", min, sec];
	
	return retString;
}

+(NSString*)getWeekString:(int)week
{
	NSString *weekString = nil;
	
	switch (week) {
		case 1:
			weekString = @"SUN";
			break;
		case 2:
			weekString = @"MON";
			break;
		case 3:
			weekString = @"TUE";
			break;
		case 4:
			weekString = @"WED";
			break;
		case 5:
			weekString = @"THU";
			break;
		case 6:
			weekString = @"FRI";
			break;
		case 7:
			weekString = @"SAT";
			break;
		default:
			break;
	}
	
	return weekString;
}

+(NSString*)getMonthString:(int)month
{

	NSString *monthString = nil;
	switch (month) {
		case 1:
			monthString = @"Jan";
			break;
		case 2:
			monthString = @"Feb";
			break;
		case 3:
			monthString = @"Mar";
			break;
		case 4:
			monthString = @"Apr";
			break;
		case 5:
			monthString = @"May";
			break;
		case 6:
			monthString = @"Jun";
			break;
		case 7:
			monthString = @"Jul";
			break;
		case 8:
			monthString = @"Aug";
			break;
		case 9:
			monthString = @"Sep";
			break;
		case 10:
			monthString = @"Oct";
			break;
		case 11:
			monthString = @"Nov";
			break;
		case 12:
			monthString = @"Dec";
			break;
		default:
			break;
	}
	return monthString;
}

+(void)getDayMonthWeek:(NSDate*)date month:(int*)month
				   day:(int*)day week:(int*)week
{
	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  
	NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | 
	NSSecondCalendarUnit | NSWeekdayCalendarUnit;
	NSDateComponents *dateComponents = [calendar components:unitFlags 
												   fromDate:date];
	*month = [dateComponents month];
	*day = [dateComponents day];
	*week = [dateComponents weekday];
}

+(NSString*)createFullTimeStringFromDate:(NSDate*)date
{
	char *weekDayName[8] = {"", "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"};

	NSCalendar *calendar= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSCalendarUnit unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit |  
	NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | 
	NSSecondCalendarUnit | NSWeekdayCalendarUnit;
	NSDateComponents *dateComponents = [calendar components:unitFlags 
												   fromDate:date];
	
	NSInteger year = [dateComponents year];
	NSInteger month = [dateComponents month];
	NSInteger day = [dateComponents day];
	NSInteger hour = [dateComponents hour];
	NSInteger minute = [dateComponents minute];
	NSInteger second = [dateComponents second];
	NSInteger weekDay = [dateComponents weekday];
	
	
	[calendar release];
	return [NSString stringWithFormat:@"%d/%02d/%02d %s %02d:%02d:%02d",
			year, month, day, weekDayName[weekDay], hour, minute, second];	
}

@end
