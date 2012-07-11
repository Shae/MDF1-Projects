//
//  SecondViewController.m
//  MDF1-wk2
//
//  Created by Shae Klusman on 7/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "TableCellViewController.h"
//#import "children.plist"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize table;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
       // myArray = [[NSMutableArray alloc] initWithObjects:@"Adam", @"Bryan", nil];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *defaultPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"children.plist"];
    NSDictionary *plistDictionary = [[NSDictionary alloc] initWithContentsOfFile:defaultPath];
    if (plistDictionary != nil)
    {
        NSArray *array = [plistDictionary objectForKey:@"Children"];
        if (array != nil)
        {
            for (int i=0; i<[array count]; i++)
            {
                NSDictionary *kidDictionary = [array objectAtIndex:i];
                NSLog(@"child# %d name = %@", i, [kidDictionary objectForKey:@"Name"]);            
            }
        }   
    }
    //kidList = [[NSDictionary alloc] initWithContentsOfFile:@"children.plist"];
    
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
    return 5;
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
                cell = (TableCellViewController*) view;
        }
    }
    return cell;
}



@end
