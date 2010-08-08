//
//  MyTime.m
//  MyLib
//
//  Created by deeplove on 2010/8/7.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyTime.h"


@implementation MyTime

+(NSString*)getMinSecondStringFromSecond:(int)second
{
	NSString *retString;
	int min = second/60;
	int sec = second%60;
	retString = [NSString stringWithFormat:@"%d:%02d", min, sec];
	
	return retString;
}


@end
