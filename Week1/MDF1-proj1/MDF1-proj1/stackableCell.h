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
    IBOutlet UITextView *cellLabel;
    IBOutlet UIImageView *cellImage;
    __weak IBOutlet UILabel *labelLabel;
}

@end
