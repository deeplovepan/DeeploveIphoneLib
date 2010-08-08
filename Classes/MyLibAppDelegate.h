//
//  MyLibAppDelegate.h
//  MyLib
//
//  Created by deeplove on 2010/8/7.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyLibViewController;

@interface MyLibAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MyLibViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MyLibViewController *viewController;

@end

