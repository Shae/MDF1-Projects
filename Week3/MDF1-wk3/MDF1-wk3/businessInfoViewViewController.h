//
//  businessInfoViewViewController.h
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>
#import "myMapAnno.h"
@interface businessInfoViewViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView;
    double businessLat;
    double businessLong;
    NSDictionary *itemPassedIn;
    
}

@property (nonatomic, strong) NSDictionary *itemPassedIn;

@end
