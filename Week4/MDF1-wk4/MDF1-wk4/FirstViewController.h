//
//  FirstViewController.h
//  MDF1-wk4
//
//  Created by Shae Klusman on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSData *myData;
    NSMutableData *requestData;
    NSInteger numItems;
    NSMutableArray *stuff;
    __weak IBOutlet UITableView *table;
    __weak IBOutlet UILabel *typeLabel;
    __weak IBOutlet UILabel *itemLabel;
    __weak IBOutlet UIView *view2;
    IBOutlet UIView *mainView;
}
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *itemLabel;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UITableView *table;
@property (strong, nonatomic) IBOutlet UIView *mainView;

-(IBAction)onClick:(id)sender;
@end
