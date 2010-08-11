//
//  MyWeb.h
//  MyLib
//
//  Created by deeplove on 2010/8/8.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyWeb : NSObject {
	
}
+(NSData*)sendReqForUrl:(NSString*)urlString body:(NSData*)body;
+(NSData*)uploadImageToUrl:(NSString*)urlString body:(NSData*)body 
				  boundary:(NSString*)boundary;
@end
