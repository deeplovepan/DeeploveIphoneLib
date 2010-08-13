//
//  TwitterTestViewController.h
//  MyLib
//
//  Created by deeplove on 2010/8/13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SA_OAuthTwitterController.h"
#import "SA_OAuthTwitterEngine.h"


@interface TwitterTestViewController : UIViewController <
SA_OAuthTwitterControllerDelegate>{
	SA_OAuthTwitterEngine *twitterEngine;

}

@end
