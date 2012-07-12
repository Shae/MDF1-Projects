//
//  infoViewController.m
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "infoViewController.h"

@interface infoViewController ()

@end

@implementation infoViewController

@synthesize itemDict;

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
     self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Kid-KoderBG.png"]];}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   
    mainLabel.text = [itemDict objectForKey:@"Name"];
    label1.text = [itemDict objectForKey:@"Gender"];
    NSNumber *ageNum = [itemDict objectForKey:@"Age"];
    label2.text = [ageNum description];
    label3.text = [itemDict objectForKey:@"Notes"];
    
    NSString *gender = [itemDict objectForKey:@"Gender"];
    if ([gender isEqualToString:@"Male"])
    {
        mainLabel.textColor = [UIColor colorWithRed: 30.0/255.0 green: 144.0/255.0 blue:255.0/255.0 alpha: 1.0];
    }else{
         mainLabel.textColor = [UIColor magentaColor];
    }

}


- (void)viewDidUnload
{
    label1 = nil;
    label2 = nil;
    label3 = nil;
    mainLabel = nil;

    photo = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)submit:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] 
                        initWithTitle:
                          @"Under Construction"
                        message:
                          @"Photos will be availailable shortly"
                        delegate: 
                          self 
                        cancelButtonTitle:
                          @"Close"
                        otherButtonTitles: nil];
    
    [alert show];
}
@end
