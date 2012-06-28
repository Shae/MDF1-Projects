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

}
- (IBAction)edit:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;


@end
