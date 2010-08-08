//
//  ExJson.m
//  MyLib
//
//  Created by deeplove on 2010/8/8.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ExJson.h"
#import "JSON.h"
#import "MyWeb.h"

@implementation ExJson

+(void)parseJsonDataDict
{
	NSString *responseString;
	
	NSData *data = [MyWeb sendReqForUrl:@"http://api.twitter.com/1/users/show/deeplovemac.json"
								   body:nil];
	responseString = [[NSString alloc] initWithData:data
										   encoding:NSUTF8StringEncoding];
	NSDictionary *jsonDict = [responseString JSONValue];
	for(NSString *key in jsonDict)
	{
		NSLog(@"%@ %@", key, [jsonDict objectForKey:key]);
	}
	
}

+(void)parseJsonDataArray
{
	NSString *responseString;
	NSString *postString;
	postString = @"type=get&cid=11&Lat=100&Lon=100";
	NSData *postData = [postString dataUsingEncoding:NSUTF8StringEncoding];
	NSData *data = [MyWeb sendReqForUrl:@"http://ec2-174-129-155-73.compute-1.amazonaws.com/recieve.php"
								   body:postData];
	
	responseString = [[NSString alloc] initWithData:data
										   encoding:NSUTF8StringEncoding];
	NSArray *jsonArray = [responseString JSONValue];
	for(NSDictionary *dict in jsonArray)
	{
		for(NSString *key in dict)
		{
			NSLog(@"%@ %@", key, [dict objectForKey:key]);
		}
	}
}

@end
