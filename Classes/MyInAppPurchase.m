//
//  MyInAppPurchase.m
//  MyLib
//
//  Created by deeplove on 2010/8/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyInAppPurchase.h"

@implementation MyInAppPurchase

@synthesize productIdList;

-(void)getProjectsInfo
{
	//product identifier list would ideally be loaded from an external server in order
	// to allow you to dynamically add or remove products
	// set product id defined in itunes connect 
	[[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    productRequest = [[SKProductsRequest alloc] initWithProductIdentifiers:
					  [NSSet setWithArray:productIdList]];  
	
    productRequest.delegate = self;  
    [productRequest start]; 
}

- (void)dealloc {
	[productRequest release];
	[productIdList release];
    [super dealloc];
}

#pragma mark -
#pragma mark SKProductsRequestDelegate

// get project detail info
// response.products include products info from Apple Server
-(void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response  
{  
}  

-(void)requestDidFinish:(SKRequest *)request  
{  
	
    [request release];  
}  

-(void)request:(SKRequest *)request didFailWithError:(NSError *)error  
{  
    NSLog(@"Failed to connect with error: %@", [error localizedDescription]);  
}  

#pragma mark -
#pragma mark SKPaymentTransactionObserver methods

//
// called when the transaction status is updated
//
- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions
{
    for (SKPaymentTransaction *transaction in transactions)
    {
        switch (transaction.transactionState)
        {
            case SKPaymentTransactionStatePurchased:
                break;
            case SKPaymentTransactionStateFailed:
                break;
            case SKPaymentTransactionStateRestored:
                break;
            default:
                break;
        }
    }
}



@end
