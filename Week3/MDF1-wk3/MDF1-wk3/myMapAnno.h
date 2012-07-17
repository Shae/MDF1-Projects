//
//  myMapAnno.h
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <mapKit/Mapkit.h>
@interface myMapAnno : NSObject <MKAnnotation>
{
    NSString *title;
    CLLocationCoordinate2D *myCoordinate;
}

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@end
