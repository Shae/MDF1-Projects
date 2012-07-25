//
//  campItems.m
//  MDF1-wk4
//
//  Created by Shae Klusman on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "campItems.h"

@implementation campItems
@synthesize name;
@synthesize type;

-(id)initWithName:(NSString*)itemName itemType:(NSString*)itemType
{
    if ((self = [super init])) 
    {
        name = itemName;
        type = itemType;
    }
    return self;
}

@end
