//
//  FirstViewController.m
//  MDF1-wk4
//
//  Created by Shae Klusman on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "campItems.h"
#import "customCell.h"
@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize typeLabel;
@synthesize itemLabel;
@synthesize view2;
@synthesize table;
@synthesize mainView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }

    numItems = 0;
    stuff = [[NSMutableArray alloc] init];
    
    url = [[NSURL alloc] initWithString:@"https://dl.dropbox.com/u/56452103/myXMLDoc.xml"];
    request = [[NSURLRequest alloc] initWithURL:url];
    
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        requestData = [NSMutableData data];
        NSXMLParser *dataParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
        if (dataParser != nil) {
            [dataParser setDelegate:self];
            [dataParser parse];
        }
        //NSLog(@"%@",requestData);
    }  
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"campingList"]) 
    {
        NSString *numItemsStr = [attributeDict valueForKey:@"NumItems"];
        if (numItemsStr != nil) 
        {
            numItems = [numItemsStr intValue];
            NSLog(@"%i", numItems);
        }
    }
    else if ([elementName isEqualToString:@"item"]) 
    {
        //Searching for these keys within my parse to find values
        NSString *name = [attributeDict valueForKey:@"Name"];
        NSString *type = [attributeDict valueForKey:@"Type"];
        
        campItems *item = [[campItems alloc] initWithName:name itemType:type];
        if (item != nil) 
        {
            [stuff addObject:item];
        }
    }
    // Log out the count of items as proof I am building up my array
    NSLog(@"%i", [stuff count]);
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (data != nil)
    {
        // add this data to our existing requestData
        [requestData appendData:data];
    }
}

// this function is called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil)
    {
        // log the entire request out as a string
        // NSLog(@"%@", requestString);
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    view2.frame = CGRectMake(-320.0f, 0.0f, view2.frame.size.width, view2.frame.size.height);
}

- (void)viewDidLoad
{
        
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    table = nil;
    [self setTable:nil];
    typeLabel = nil;
    [self setTypeLabel:nil];
    itemLabel = nil;
    [self setItemLabel:nil];
    view2 = nil;
    [self setView2:nil];
    mainView = nil;
    [self setMainView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [stuff count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    customCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"customCell" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[customCell class]])
            {
                cell = (customCell*) view;
                // setting cell label
                // create an object to hold the selected item from the row using the custom class.
                campItems *theStuff = [stuff objectAtIndex:indexPath.row];
                //Dig into the object using dot syntax to retreave the data
                cell.myLabel.text = theStuff.name;
                
            }
        }
    }
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   [UIView beginAnimations:nil context:nil];
    campItems *theStuff = [stuff objectAtIndex:indexPath.row];
    typeLabel.text = theStuff.type;
    itemLabel.text = theStuff.name;
    
    
    view2.frame = CGRectMake(0.0f, 0.0f, view2.frame.size.width, view2.frame.size.height);
    [UIView commitAnimations];
}


-(IBAction)onClick:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    view2.frame = CGRectMake(-320.0f, 0.0f, view2.frame.size.width, view2.frame.size.height);
    [UIView commitAnimations];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
