//
//  FirstViewController.h
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *businessArray;
    NSString *plistAddress;
    __weak IBOutlet UITableView *businessTable;
    NSInteger selectedItem;
    NSDictionary *plistDictionary;
    __weak IBOutlet UIButton *editBtn;
}

@property (weak, nonatomic) IBOutlet UITableView *businessTable;
@property (weak, nonatomic) IBOutlet UIButton *editBtn;
@property (nonatomic, strong) NSMutableArray *businessArray;

- (IBAction)edit:(id)sender;
-(IBAction)onclick:(id)sender;

@end
