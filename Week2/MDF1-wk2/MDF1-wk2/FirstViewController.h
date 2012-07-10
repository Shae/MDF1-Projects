//
//  FirstViewController.h
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    IBOutlet UIView *viewMain;
    IBOutlet UIView *viewInfo;
}

@property (weak, nonatomic) IBOutlet UIButton *moreInfoBtn;
@property (weak, nonatomic) IBOutlet UIButton *backToMainBtn;

-(IBAction)moreBtn:(id)sender;
-(IBAction)backBtn:(id)sender;

@end
