//
//  MyWeb.m
//  MyLib
//
//  Created by deeplove on 2010/8/8.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyWeb.h"


@implementation MyWeb

+(UIImage*)downloadImageFromUrl:(NSString*)urlString
{
	NSURL *url = [NSURL URLWithString:urlString];
	NSData *data = [[NSData alloc]
					initWithContentsOfURL:url];
	UIImage *image = [UIImage imageWithData:data];
	[data release];
	return image;
}

+(NSData*)uploadImageToUrl:(NSString*)urlString body:(NSData*)body 
				  boundary:(NSString*)boundary
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
	
	NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@",
							 boundary];
	[urlRequest addValue:contentType forHTTPHeaderField: @"Content-Type"];
	
	NSURLResponse *urlResponse = nil;
	NSError *error = nil;
	NSData *responseData = [NSURLConnection sendSynchronousRequest:urlRequest
												 returningResponse:&urlResponse
															 error:&error];
	NSLog(@"%s", [responseData bytes]);
	//NSLog(@"%p", error);
	//NSString *responseString = [[NSString alloc] initWithData:responseData
	//										encoding:NSUTF8StringEncoding];
	//NSLog(@"%@", responseString);
	return [responseData copy];
}

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
	//return [responseData copy];
	return responseData;
}

@end
