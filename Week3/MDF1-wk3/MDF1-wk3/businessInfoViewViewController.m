//
//  businessInfoViewViewController.m
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "businessInfoViewViewController.h"
#import "myMapAnno.h"

@interface businessInfoViewViewController ()

@end

@implementation businessInfoViewViewController
@synthesize itemPassedIn;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    businessLat= 0;
    businessLong = 0;
}

- (void)viewDidLoad
{
    //Proof of passed in info
    /* 
    NSLog(@"%@",[itemPassedIn objectForKey:@"latLoc"]);
    NSLog(@"%@",[itemPassedIn objectForKey:@"longLoc"]);
    NSLog(@"%@",[itemPassedIn objectForKey:@"Name"]);
    NSLog(@"%@",[itemPassedIn objectForKey:@"Notes"]);
    */
    
    // converting NSNumber to float values
    businessLat =  [[itemPassedIn objectForKey:@"latLoc"] floatValue];
    businessLong = [[itemPassedIn objectForKey:@"longLoc"] floatValue];
    
    if ((businessLong == 0) || (businessLat == 0))
    {
        //testing to make sure data is coming in
        NSLog(@"Error in the Lat Long coords");
    }
    
    MKCoordinateSpan span;
    span.latitudeDelta = 0.3f;
    span.longitudeDelta = 0.3f;
    
    CLLocationCoordinate2D location;
    location.latitude = businessLat;
    location.longitude = businessLong;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    //Initialize the myMapAnno and adding it to this page.
    myMapAnno *anno = [[myMapAnno alloc] initWithTitle:[itemPassedIn objectForKey:@"Name"] coord:location];
    if (anno != nil) {
        [mapView addAnnotation:anno];
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
