//
//  ViewController.m
//  MDF1-proj1
//
//  Created by Shae Klusman on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "stackableCell.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableViewMain;

- (void)viewDidLoad
{
    myArray = [[NSMutableArray alloc] initWithObjects:@"Aa", @"Bb", @"Cc", @"Dd", @"Ee", @"Ff", @"Gg", @"Hh", @"Ii", @"Jj", @"Kk", @"Ll", @"Mm", @"Nn", @"Oo", @"Pp", @"Qq", @"Rr", @"Ss", @"Tt",@"Uu", @"Vv", @"Ww", @"Xx", @"Yy", @"Zz", nil];
    [editBtn setTitle:@"EDIT" forState:UIControlStateNormal];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTableViewMain:nil];
    tableViewMain = nil;
    editBtn = nil;
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
    
    stackableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"stackableView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if([view isKindOfClass:[stackableCell class]])
            {
                cell = (stackableCell*) view;
                NSString *Item = [myArray objectAtIndex:indexPath.row];
                cell.label.text = [myArray objectAtIndex:indexPath.row];
                cell.detailLabel.text = [NSString stringWithFormat:@"This is a details label for object %@", Item];
            }
        }

    }
    //cell.textLabel.text = (NSString*) [myArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delete row = %d", indexPath.row);
        //editBtn.titleLabel.text = @"Done";
        [ myArray removeObjectAtIndex:indexPath.row]; 
    }
}
/*
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    if (editing == NO){
        [tableViewMain setEditing:YES ];
    } if (editing == YES){
        [tableViewMain setEditing:NO ];
    }
}*/

- (IBAction)edit:(id)sender 
{
   //int btnClick = 0;
    NSLog(@"%@", editBtn.titleLabel.text);
    NSString * btnName = editBtn.titleLabel.text;
    
    if (btnName == @"EDIT"){
        NSLog(@"BOO");
        [tableViewMain setEditing:YES animated:YES];
        [sender setTitle:@"DONE" forState:UIControlStateNormal];
        //btnClick = 1;
    } else if (btnName == @"DONE"){
        [tableViewMain setEditing:NO animated:YES];
        [sender setTitle:@"EDIT" forState:UIControlStateNormal];
       // btnClick = 0;
    }

}
@end
