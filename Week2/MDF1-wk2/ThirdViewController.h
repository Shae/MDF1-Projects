//
//  ThirdViewController.h
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UITextFieldDelegate>
{
    

    __weak IBOutlet UISlider *slideBar;
    __weak IBOutlet UITextField *ageLabel;
    __weak IBOutlet UITextField *name;
    __weak IBOutlet UITextField *notes;
    NSString *plistAddress;
}

@property (strong, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UIButton *BG;
@property (weak, nonatomic) IBOutlet UITextField *nameField;

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
-(IBAction)submit:(id)sender;
//- (void)writeToPlist;
@end
