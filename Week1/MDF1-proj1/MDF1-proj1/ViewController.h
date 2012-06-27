//
//  ViewController.h
//  MDF1-proj1
//
//  Created by Shae Klusman on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITableViewDataSource>
{
    
    __weak IBOutlet UITableView *tableViewMain;
    NSArray *myArray;
}

@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;

@end
