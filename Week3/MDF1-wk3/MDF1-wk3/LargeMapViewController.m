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
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    arrayPassedIn = appDelegate.myCurrentArray; 
    NSLog(@"%@", arrayPassedIn);
    if (arrayPassedIn != nil) {
        for ( int i=0; i<[arrayPassedIn count]; i++)
        {
            NSLog(@"%i", i);
            i++;
        }
    }else {
        NSLog(@"The array passed in is empty.");
    }
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
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
