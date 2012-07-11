//
//  ThirdViewController.m
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

@synthesize myView;
@synthesize BG;
@synthesize nameField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Add Child", @"Add Child");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    // Find plist address
    NSString *defaultPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"children.plist"];
    plistAddress = [NSString stringWithFormat:@"%@", defaultPath];
}

- (void)viewDidUnload
{
    name = nil;

    notes = nil;



    [self setMyView:nil];

    [self setBG:nil];
    ageLabel = nil;
    slideBar = nil;
    [self setNameField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)onClick:(id)sender
{
    [name resignFirstResponder];

    [notes resignFirstResponder];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [name resignFirstResponder];

    [notes resignFirstResponder];
    return YES;
}

-(IBAction)onChange:(id)sender
{
    int myVal = (int)[slideBar value];
    ageLabel.text = [NSString stringWithFormat:@"%d", myVal];
}
-(IBAction)submit:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                          @"Under Construction"
                        message:
                          @"This option is not currently available"
                        delegate: 
                          self 
                        cancelButtonTitle:
                          @"Close"
                        otherButtonTitles: nil];
    
    [alert show];
}



- (void)writeToPlist
{
    NSString *filePath = plistAddress;
    NSMutableDictionary* plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:filePath];
    NSString *myName = self.nameField.text;
    [plistDict setValue: myName forKey: @"Name"];
    [plistDict writeToFile:filePath atomically: YES];
    
    /* This would change the firmware version in the plist to 1.1.1 by initing the NSDictionary with the plist, then changing the value of the string in the key "ProductVersion" to what you specified */
}
@end
