//
//  stackableCell.h
//  MDF1-proj1
//
//  Created by Shae Klusman on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface stackableCell : UITableViewCell
{
    IBOutlet UILabel *cellLabel;
    IBOutlet UIImageView *cellImage;
   // __weak IBOutlet UILabel *labelLabel;
    __weak IBOutlet UIImageView *eachImage;
}
@property (weak, nonatomic) IBOutlet UIImageView *eachImage;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end
