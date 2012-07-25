//
//  campItems.h
//  MDF1-wk4
//
//  Created by Shae Klusman on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface campItems : NSObject
{
    NSString *name;
    NSString *type;
}
@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *type;
-(id)initWithName:(NSString*)itemName itemType:(NSString*)itemType;

@end
