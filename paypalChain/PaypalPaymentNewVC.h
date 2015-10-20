//
//  PaypalPaymentNewVC.h
//  Shishar
//
//  Created by Tops on 10/15/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  AppDelegate;

@interface PaypalPaymentNewVC : UIViewController<UIWebViewDelegate>{
    IBOutlet UIWebView *webPaypal;
    IBOutlet UINavigationBar *navBar;
    NSString *baseUrl;
    NSString *successUrl;
    NSString *CancelUrl;
    NSTimer *timer;
    NSString *transactionID;
    BOOL m4;
    AppDelegate *appDel;
    NSString *adminemail;
    NSString *adminAmount;
}

@property (nonatomic,retain)IBOutlet NSString *itemID;
@property (nonatomic,retain)IBOutlet NSString *itemPrice;
@property (nonatomic,retain)IBOutlet NSString *itemName;
@property (nonatomic,retain)IBOutlet NSString *receiptEmail;
@property (nonatomic,retain)IBOutlet NSString *Currency;
//@property (nonatomic,retain)IBOutlet PFUser *owner;
//@property (nonatomic,retain)PFObject *photo;
@end
