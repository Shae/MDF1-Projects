//
//  customCell.h
//  MDF1-wk4
//
//  Created by Shae Klusman on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCell : UITableViewCell
{
    
    __weak IBOutlet UILabel *myLabel;
}
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@end
