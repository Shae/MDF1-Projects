//
//  infoViewController.h
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface infoViewController : UIViewController
{
    __weak IBOutlet UILabel *mainLabel;
    __weak IBOutlet UILabel *label1;
    __weak IBOutlet UILabel *label2;
    __weak IBOutlet UILabel *label3;
    NSDictionary *itemDict;

    __weak IBOutlet UIButton *photo;
}


@property (nonatomic, strong) NSDictionary *itemDict;
-(IBAction)submit:(id)sender;
@end
