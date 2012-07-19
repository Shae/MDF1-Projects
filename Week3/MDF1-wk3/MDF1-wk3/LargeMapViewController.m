//
//  LargeMapViewController.m
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LargeMapViewController.h"
#import "AppDelegate.h"
#import "FirstViewController.h"
@interface LargeMapViewController ()


@end

@implementation LargeMapViewController
@synthesize arrayPassedIn;
@synthesize FullMap;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Full Map", @"Full Map");
        self.tabBarItem.image = [UIImage imageNamed:@"pin"];
    }
    return self;
}

- (void)viewDidLoad
{
   
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}
-(void)viewWillAppear:(BOOL)animated
{
    //Clear map of all pins
    [FullMap removeAnnotations:FullMap.annotations];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    arrayPassedIn = appDelegate.businessArray; 
    
    MKCoordinateSpan span;
    span.latitudeDelta = 1.0f;
    span.longitudeDelta = 1.0f;
    
    CLLocationCoordinate2D location;
    location.latitude = 47.0f;
    location.longitude = -123.0f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    FullMap.region = region;
    
    //Initialize the myMapAnno and adding it to this page.

    for (int i=0; i<[arrayPassedIn count]; i++)
    {
         NSDictionary *BusinessDictionary = [arrayPassedIn objectAtIndex:i];
    
        
        double busLat =  [[BusinessDictionary objectForKey:@"latLoc"] floatValue];
        double busLong = [[BusinessDictionary objectForKey:@"longLoc"] floatValue];        
         NSLog(@"Coords: %f, %f", busLat, busLong);
        
        //CLLocationCoordinate2D locationEach;
        location.latitude = busLat;
        location.longitude = busLong;
         
         
         if ((busLat == 0) || (busLong == 0))
         {
             //testing to make sure data is coming in
             NSLog(@"Error in the Lat Long coords");
         }
        
        myMapAnno *anno = [[myMapAnno alloc] initWithTitle:[BusinessDictionary objectForKey:@"Name"] coord:location];
        [FullMap addAnnotation:anno];
        
     }
}

- (MKAnnotationView*)mapView: (MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    
    annView.animatesDrop = TRUE;
    annView.canShowCallout = TRUE;
    annView.calloutOffset = CGPointMake(-5, 5);
    return annView;
}

- (void)viewDidUnload
{
    fullMap = nil;
    [self setFullMap:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
