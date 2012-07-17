//
//  myMapAnno.m
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "myMapAnno.h"


@implementation myMapAnno 
@synthesize title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}

@end
