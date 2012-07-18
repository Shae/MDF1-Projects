//
//  LargeMapViewController.h
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>
#import "myMapAnno.h"
#import "FirstViewController.h"

@interface LargeMapViewController : UIViewController <MKMapViewDelegate>
{
    double businessLat;
    double businessLong;
    NSMutableArray *arrayPassedIn;
    __weak IBOutlet MKMapView *fullMap;
}

@property (nonatomic, strong) NSArray *arrayPassedIn;
@property (weak, nonatomic) IBOutlet MKMapView *FullMap;

@end
