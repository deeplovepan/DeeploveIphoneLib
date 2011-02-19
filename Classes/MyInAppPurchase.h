//
//  MyInAppPurchase.h
//  MyLib
//
//  Created by deeplove on 2010/8/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>  


@interface MyInAppPurchase : NSObject <SKProductsRequestDelegate,
SKPaymentTransactionObserver> {
	SKProductsRequest *productRequest;
	NSMutableArray *productIdList;  
}
@property (nonatomic, retain) NSMutableArray *productIdList;

-(void)getProjectsInfo;


@end
