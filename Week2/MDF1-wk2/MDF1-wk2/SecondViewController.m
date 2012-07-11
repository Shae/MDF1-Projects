//
//  SecondViewController.m
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "TableCellViewController.h"
#import "infoViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize table;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Children", @"Children");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
   // NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *defaultPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"children.plist"];
    plistAddress = [NSString stringWithFormat:@"%@", defaultPath];
    
    NSDictionary *plistDictionary = [[NSDictionary alloc] initWithContentsOfFile:defaultPath];
    if (plistDictionary != nil)
    {
        myArray = [plistDictionary objectForKey:@"Children"];
        if (myArray != nil)
        {
            for (int i=0; i<[myArray count]; i++)
            {
                NSDictionary *kidDictionary = [myArray objectAtIndex:i];
                NSLog(@"child# %d name = %@", i, [kidDictionary objectForKey:@"Name"]);    
                NSLog(@"%@ is a %@ year old %@", [kidDictionary objectForKey:@"Name"], [kidDictionary objectForKey:@"Age"], [kidDictionary objectForKey:@"Gender"]);
            }
        }   
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTable:nil];
    table = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    TableCellViewController *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"TableCellViewController" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[TableCellViewController class]])
            {
                cell = (TableCellViewController*) view;

                NSDictionary *kidDictionary = [myArray objectAtIndex:indexPath.row];
                cell.myLabel.text = [kidDictionary objectForKey:@"Name"];
            }

        }
    }
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selection = [myArray objectAtIndex:indexPath.row];
    infoViewController *infoView = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
    if (selection != nil)
    {
        // to track the item touched since i cant get the labels to work right now
        selectedItem = indexPath.row;
       // infoViewController.itemDict = [myArray objectAtIndex:indexPath.row];
        infoView.itemDict = [myArray objectAtIndex:indexPath.row];
        
        NSLog(@"You selected index position %d", selectedItem);
        
        // swap views
        [self.navigationController pushViewController:infoView animated:TRUE];
    }

}



@end
