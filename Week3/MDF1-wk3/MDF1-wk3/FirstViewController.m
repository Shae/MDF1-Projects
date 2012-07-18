//
//  FirstViewController.m
//  MDF1-wk3
//
//  Created by Shae Klusman on 7/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "TableViewCellController.h"
#import "businessInfoViewViewController.h"
#import "LargeMapViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize businessTable;
@synthesize editBtn;
//@synthesize businessArray;

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
    
    //MOVED TO APP DELEGATE
    
   // AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
   // appDelegate.myCurrentArray = businessArray;
   /* 
    NSString *defaultPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"fictBusiness.plist"];
    plistAddress = [NSString stringWithFormat:@"%@", defaultPath];
    
    plistDictionary = [[NSDictionary alloc] initWithContentsOfFile:defaultPath];
    if (plistDictionary != nil)
    {
        //Bringing in a NSArray from a plist and turn it into a NSMutableArray
        businessArray = [NSMutableArray arrayWithArray:[plistDictionary objectForKey:@"list"]];
        if (businessArray != nil) {
            appDelegate.myCurrentArray = businessArray;
        }
    }*/
}

-(void)viewWillDisappear:(BOOL)animated
{
    /*
     AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.myCurrentArray = businessArray; 
     */
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // to count the items in the appDelegate.myCurrentArray
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSMutableArray *tempArray = appDelegate.businessArray;
    
    return [tempArray count];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSMutableArray *tempArray = appDelegate.businessArray;
    //NSDictionary *tempDictionary = appDelegate.plistDictionary;
    
    TableViewCellController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CellViewController" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[TableViewCellController class]])
            {
                cell = (TableViewCellController*) view;
                // setting cell label
                NSDictionary *businessDictionary = [tempArray objectAtIndex:indexPath.row];
                cell.cellLabel.text = [businessDictionary objectForKey:@"Name"];
            }
        }
    }
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSMutableArray *tempArray = appDelegate.businessArray;
    
    //NSDictionary *tempDictionary = appDelegate.plistDictionary;
    NSString *selection = [tempArray objectAtIndex:indexPath.row];
    businessInfoViewViewController *infoView = [[businessInfoViewViewController alloc] initWithNibName:@"businessInfoViewViewController" bundle:nil];
      if (selection != nil)
    {
        // to track the item touched since i cant get the labels to work right now
        selectedItem = indexPath.row;
         NSLog(@"You selected index position %d", selectedItem);
        
        // passing dictionary object to other view
        infoView.itemPassedIn = [tempArray objectAtIndex:indexPath.row];
    }
    [self.navigationController pushViewController:infoView animated:TRUE];
}

- (void)viewDidUnload
{
    [self setBusinessTable:nil];
    businessTable = nil;
    editBtn = nil;

    [self setEditBtn:nil];

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)edit:(id)sender 
{
    if (businessTable.isEditing == NO){
        [businessTable setEditing:YES animated:YES];
    }else{
        [businessTable setEditing:NO animated:YES];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSMutableArray *tempArray = appDelegate.businessArray;
    
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delete row = %d", indexPath.row);
        [businessTable beginUpdates];        
        [tempArray removeObjectAtIndex:indexPath.row];         
        [businessTable deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [businessTable endUpdates];
        // making changes if edit had been done
        appDelegate.businessArray = tempArray;
    }
}

@end
