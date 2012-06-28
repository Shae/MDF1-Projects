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
                //cell.detailLabel.text = [NSString stringWithFormat:@"This is a details label for object %@", Item];
                if (Item == @"Aa"){
                    cell.eachImage.image = [UIImage imageNamed:@"A.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"A\" is for Apple."];
                }else if(Item == @"Bb"){
                    cell.eachImage.image = [UIImage imageNamed:@"B.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"B\" is for Boy."];
                }else if(Item == @"Cc"){
                    cell.eachImage.image = [UIImage imageNamed:@"C.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"C\" is for Camel."];
                }else if(Item == @"Dd"){
                    cell.eachImage.image = [UIImage imageNamed:@"D.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"D\" is for Dog."];
                }else if(Item == @"Ee"){
                    cell.eachImage.image = [UIImage imageNamed:@"E.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"E\" is for Elephant."];
                }else if(Item == @"Ff"){
                    cell.eachImage.image = [UIImage imageNamed:@"F.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"F\" is for Frog."];
                }else if(Item == @"Gg"){
                    cell.eachImage.image = [UIImage imageNamed:@"G.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"G\" is for Girl."];
                }else if(Item == @"Hh"){
                    cell.eachImage.image = [UIImage imageNamed:@"H.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"H\" is for Heart."];
                }else if(Item == @"Ii"){
                    cell.eachImage.image = [UIImage imageNamed:@"I.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"I\" is for Ice."];
                }else if(Item == @"Jj"){
                    cell.eachImage.image = [UIImage imageNamed:@"J.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"J\" is for Juice."];
                }else if(Item == @"Kk"){
                    cell.eachImage.image = [UIImage imageNamed:@"K.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"K\" is for Kid."];
                }else if(Item == @"Ll"){
                    cell.eachImage.image = [UIImage imageNamed:@"L.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"L\" is for Lemon."];
                }else if(Item == @"Mm"){
                    cell.eachImage.image = [UIImage imageNamed:@"M.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"M\" is for Mouse."];
                }else if(Item == @"Nn"){
                    cell.eachImage.image = [UIImage imageNamed:@"N.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"N\" is for Nose."];
                }else if(Item == @"Oo"){
                    cell.eachImage.image = [UIImage imageNamed:@"O.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"O\" is for Orange."];
                }else if(Item == @"Pp"){
                    cell.eachImage.image = [UIImage imageNamed:@"P.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"P\" is for Pig."];
                }else if(Item == @"Qq"){
                    cell.eachImage.image = [UIImage imageNamed:@"Q.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"Q\" is for Queen."];
                }else if(Item == @"Rr"){
                    cell.eachImage.image = [UIImage imageNamed:@"R.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"R\" is for Rain."];
                }else if(Item == @"Ss"){
                    cell.eachImage.image = [UIImage imageNamed:@"S.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"S\" is for Sheep."];
                }else if(Item == @"Tt"){
                    cell.eachImage.image = [UIImage imageNamed:@"T.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"T\" is for Turtle."];
                }else if(Item == @"Uu"){
                    cell.eachImage.image = [UIImage imageNamed:@"U.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"U\" is for Umbrella."];
                }else if(Item == @"Vv"){
                    cell.eachImage.image = [UIImage imageNamed:@"V.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"V\" is for Vault."];
                }else if(Item == @"Ww"){
                    cell.eachImage.image = [UIImage imageNamed:@"W.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"W\" is for Wagon."];
                }else if(Item == @"Xx"){
                    cell.eachImage.image = [UIImage imageNamed:@"X.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"X\" is for Xiphoid :)"];
                }else if(Item == @"Yy"){
                    cell.eachImage.image = [UIImage imageNamed:@"Y.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"Y\" is a Question. HAHA"];
                }else if(Item == @"Zz"){
                    cell.eachImage.image = [UIImage imageNamed:@"Z.jpg"];
                    cell.detailLabel.text = [NSString stringWithFormat:@"\"Z\" is for Zebra."];
                }
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
