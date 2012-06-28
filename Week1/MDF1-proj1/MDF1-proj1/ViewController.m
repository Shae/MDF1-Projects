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

-(void)viewWillAppear:(BOOL)animated
{
    subView.frame = CGRectMake(-320.0f, 0.0f, subView.frame.size.width, subView.frame.size.height);
}

- (void)viewDidLoad
{
    myArray = [[NSMutableArray alloc] initWithObjects:@"Aa", @"Bb", @"Cc", @"Dd", @"Ee", @"Ff", @"Gg", @"Hh", @"Ii", @"Jj", @"Kk", @"Ll", @"Mm", @"Nn", @"Oo", @"Pp", @"Qq", @"Rr", @"Ss", @"Tt",@"Uu", @"Vv", @"Ww", @"Xx", @"Yy", @"Zz", nil];
    [editBtn setTitle:@"EDIT" forState:UIControlStateNormal];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{

    orgMainViewFrame = mainView.frame;
    orgSubViewFrame = subView.frame;
    
    
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
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"we want to delete row = %d", indexPath.row);
        [ myArray removeObjectAtIndex:indexPath.row]; 
        [tableViewMain deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


- (IBAction)edit:(id)sender 
{

    NSLog(@"%@", editBtn.titleLabel.text);
    NSString * btnName = editBtn.titleLabel.text;
    
    if (btnName == @"EDIT"){
        NSLog(@"BOO");
        [tableViewMain setEditing:YES animated:YES];
        [sender setTitle:@"DONE" forState:UIControlStateNormal];

    } else if (btnName == @"DONE"){
        [tableViewMain setEditing:NO animated:YES];
        [sender setTitle:@"EDIT" forState:UIControlStateNormal];

    }

}

-(IBAction)back:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    subView.frame = CGRectMake(-320.0f, 0.0f, subView.frame.size.width, subView.frame.size.height);
    [UIView commitAnimations];
}

-(IBAction)digIN:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    subView.frame = CGRectMake(0.0f, 0.0f, subView.frame.size.width, subView.frame.size.height);
    
    [UIView commitAnimations];

}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    subLabel.text =  [myArray objectAtIndex:indexPath.row];
    subSubLabel.text =  [NSString stringWithFormat:@"This is a details label for object %@", [myArray objectAtIndex:indexPath.row]];
    
    
    [UIView beginAnimations:nil context:nil];
    subView.frame = CGRectMake(0.0f, 0.0f, subView.frame.size.width, subView.frame.size.height);
    
    [UIView commitAnimations];
}
@end
