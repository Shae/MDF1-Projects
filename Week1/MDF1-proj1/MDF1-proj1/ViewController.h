//
//  ViewController.h
//  MDF1-proj1
//
//  Created by Shae Klusman on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    
    __weak IBOutlet UITableView *tableViewMain;
    __weak IBOutlet UIButton *editBtn;
    NSMutableArray *myArray;
    IBOutlet UIView *mainView;
    IBOutlet UIView *subView;
    IBOutlet UIButton *viewBtn;
    __weak IBOutlet UIImageView *lrgIMG;

    __weak IBOutlet UILabel *sentenceLabel;
    
    IBOutlet UILabel *subLabel;
    IBOutlet UILabel *subSubLabel;
    CGRect orgMainViewFrame;
    CGRect orgSubViewFrame;

}
-(IBAction)edit:(id)sender;
-(IBAction)back:(id)sender;
-(IBAction)digIN:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *sentenceLabel;

@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;

@property (weak, nonatomic) IBOutlet UIImageView *lrgIMG;

@end
