//
//  businessInfoViewViewController.m
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "businessInfoViewViewController.h"

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
    NSLog(@"%@",[itemPassedIn objectForKey:@"latLoc"]);
    NSLog(@"%@",[itemPassedIn objectForKey:@"longLoc"]);
    NSLog(@"%@",[itemPassedIn objectForKey:@"Name"]);
    NSLog(@"%@",[itemPassedIn objectForKey:@"Notes"]);
    
    
    // converting NSNumber to float values
    businessLat =  [[itemPassedIn objectForKey:@"latLoc"] floatValue];
    businessLong = [[itemPassedIn objectForKey:@"longLoc"] floatValue];
    
    if (businessLong || businessLat == 0){
        NSLog(@"Error in the Lat Long coords");
    }
    
    MKCoordinateSpan span;
    span.latitudeDelta = 10.0f;
    span.longitudeDelta = 10.0f;
    
    CLLocationCoordinate2D location;
    location.latitude = businessLat;
    location.longitude = businessLong;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
