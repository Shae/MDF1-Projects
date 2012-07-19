//
//  TableViewCellController.h
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCellController : UITableViewCell
{
    
    __weak IBOutlet UILabel *infoLabel;
    __weak IBOutlet UILabel *cellLabel;
}
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end
