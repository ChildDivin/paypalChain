//
//  PaypalPaymentNewVC.m
//  Shishar
//
//  Created by Tops on 10/15/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import "PaypalPaymentNewVC.h"

@interface PaypalPaymentNewVC ()

@end

@implementation PaypalPaymentNewVC
@synthesize itemName,itemID,itemPrice,receiptEmail,Currency;
//@synthesize ,photo,owner;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    baseUrl =@"http://topsdemo.in/mit/Sequin_closet/ADp/samples/SimpleSamples/ChainedPay.html.php";
    successUrl = @"http://localhost/Adp/samples/success.php";
    CancelUrl  = @"http://localhost/Adp/samples/cancel.php";
    
   m4=NO;
   appDel =(AppDelegate *) [[UIApplication sharedApplication] delegate];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSString *itemCurrency=@"";
    if ([Currency isEqualToString:@"$"]) {
        itemCurrency =@"USD";
    }else if ([Currency isEqualToString:@"£"]) {
        itemCurrency =@"GBP";
    }if ([Currency isEqualToString:@"€"]) {
        itemCurrency =@"EUR";
    }
    
    adminemail =@"dipen.patel-facilitator@tops-int.com";
    adminAmount =@"5";
    NSString *total = @"58";
    self.receiptEmail =@"dipen.patel1@tops-int.com";
    NSString *url=[NSString stringWithFormat:@"%@?item_name=%@&item_id=%@&currency=%@&receiptEmail=%@&price=%@&&adminEmail=%@&adminAmount=%@&total=%@",baseUrl,itemName,itemID,itemCurrency,receiptEmail,itemPrice,adminemail,adminAmount,total];
    url= [url stringByReplacingOccurrencesOfString:@" " withString:@""];
    [webPaypal loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    //start loader
    NSString *url=[NSString stringWithFormat:@"%@", webPaypal.request.mainDocumentURL];
    NSLog(@"%@",url);
    if ([url isEqualToString:successUrl]) {
        //save transaction
        
    }else if ([url isEqualToString:CancelUrl]) {
        //Cancel transaction
        
        
    }
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSString *url=[NSString stringWithFormat:@"%@", webPaypal.request.mainDocumentURL];
//    NSLog(@"%@",url);
    if ([url isEqualToString:successUrl]) {
        //save transaction
        
    }else if ([url isEqualToString:CancelUrl]) {
        //Cancel transaction
        
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
