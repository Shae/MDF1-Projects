//
//  SecondViewController.h
//  MDF1-wk4
//
//  Created by Shae Klusman on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSData *myData;
    NSMutableData *requestData;
    __weak IBOutlet UIWebView *webView;
}
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
