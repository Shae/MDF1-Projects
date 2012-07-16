//
//  FirstViewController.m
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "TableViewCellController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize BusinessTable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Businesses", @"Businesses");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *defaultPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"fictBusiness.plist"];
    plistAddress = [NSString stringWithFormat:@"%@", defaultPath];
    
    NSDictionary *plistDictionary = [[NSDictionary alloc] initWithContentsOfFile:defaultPath];
    if (plistDictionary != nil)
    {
        businessArray = [plistDictionary objectForKey:@"list"];
        if (businessArray != nil)
        {
            for (int i=0; i<[businessArray count]; i++)
            {
                NSDictionary *BusinessDictionary = [businessArray objectAtIndex:i];
                NSLog(@"Company #%d: %@", i, [BusinessDictionary objectForKey:@"Name"]);    
                NSLog(@"Notes: %@", [BusinessDictionary objectForKey:@"Notes"]);
                NSLog(@"Longitude: %@", [BusinessDictionary objectForKey:@"longLoc"]);
                NSLog(@"Latitude: %@", [BusinessDictionary objectForKey:@"latLoc"]);
                NSLog(@"------------");
            }
        }   
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    TableViewCellController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"TableCellViewController" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[TableViewCellController class]])
            {
                cell = (TableViewCellController*) view;
                // setting cell label
                NSDictionary *BusinessDictionary = [businessArray objectAtIndex:indexPath.row];
                cell.cellLabel.text = [BusinessDictionary objectForKey:@"Name"];

            }
            
        }
    }
    return cell;
}

- (void)viewDidUnload
{
    [self setBusinessTable:nil];
    businessTable = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
