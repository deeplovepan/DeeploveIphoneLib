//
//  MyWeb.m
//  MyLib
//
//  Created by deeplove on 2010/8/8.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyWeb.h"


@implementation MyWeb

+(NSData*)sendReqForUrl:(NSString*)urlString body:(NSData*)body
{	
	NSURL *url = [NSURL URLWithString:urlString];
	NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url  
								cachePolicy:NSURLRequestReturnCacheDataElseLoad
								timeoutInterval:30];
	if(body == nil)
	{
		[urlRequest setHTTPMethod: @"GET" ];
	}
	else
	{
		[urlRequest setHTTPMethod: @"POST" ];
		[urlRequest setHTTPBody:body];


	}

	NSURLResponse *urlResponse = nil;
	NSError *error = nil;
	NSData *responseData = [NSURLConnection sendSynchronousRequest:urlRequest
												 returningResponse:&urlResponse
															 error:&error];
	//NSLog(@"%s", [responseData bytes]);
	//NSLog(@"%p", error);
	//NSString *responseString = [[NSString alloc] initWithData:responseData
	//										encoding:NSUTF8StringEncoding];
	//NSLog(@"%@", responseString);
	return [responseData copy];

}

@end
