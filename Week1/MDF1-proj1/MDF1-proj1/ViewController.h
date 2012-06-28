//
//  ViewController.h
//  MDF1-proj1
//
//  Created by Shae Klusman on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITableViewDataSource, UITabBarDelegate>
{
    
    __weak IBOutlet UITableView *tableViewMain;
    __weak IBOutlet UIButton *editBtn;
    NSMutableArray *myArray;
    IBOutlet UIView *mainView;
    IBOutlet UIView *subView;
    IBOutlet UIButton *viewBtn;
    IBOutlet UIButton *testBtn;
    
    CGRect orgMainViewFrame;

}
- (IBAction)edit:(id)sender;
-(IBAction)back:(id)sender;
-(IBAction)digIN:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;


@end
