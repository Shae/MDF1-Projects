//
//  TableCellViewController.h
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCellViewController : UITableViewCell
{

    __weak IBOutlet UIImageView *genderIcon;
    __weak IBOutlet UILabel *myLabel;

    
}
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIImageView *genderIcon;

@end
