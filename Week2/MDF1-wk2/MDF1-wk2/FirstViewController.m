//
//  FirstViewController.m
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize moreInfoBtn;
@synthesize backToMainBtn;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"About", @"About");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
	
-(void)viewWillAppear:(BOOL)animated
{
        viewInfo.frame = CGRectMake(-320.0f, 0.0f, viewInfo.frame.size.width, viewInfo.frame.size.height);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMoreInfoBtn:nil];
    [self setBackToMainBtn:nil];
    viewMain = nil;
    viewInfo = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)moreBtn:(id)sender
{
    viewInfo.frame = CGRectMake(0.0f, 0.0f, viewInfo.frame.size.width, viewInfo.frame.size.height);
}

-(IBAction)backBtn:(id)sender
{
    viewInfo.frame = CGRectMake(-320.0f, 0.0f, viewInfo.frame.size.width, viewInfo.frame.size.height);
}


@end
