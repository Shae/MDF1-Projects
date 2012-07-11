//
//  SecondViewController.h
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *myArray;
    NSDictionary *kidList;
    __weak IBOutlet UITableView *table;
}

@property (weak, nonatomic) IBOutlet UITableView *table;


@end
