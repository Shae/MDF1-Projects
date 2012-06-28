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
@synthesize sentenceLabel;
@synthesize tableViewMain;
@synthesize lrgIMG;

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
    lrgIMG = nil;
    [self setLrgIMG:nil];
    sentenceLabel = nil;
    [self setSentenceLabel:nil];
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
    NSString *Item = [myArray objectAtIndex:indexPath.row];
    subLabel.text =  [myArray objectAtIndex:indexPath.row];
    subSubLabel.text =  [NSString stringWithFormat:@"This is a details label for object %@", [myArray objectAtIndex:indexPath.row]];
    if (Item == @"Aa"){
        lrgIMG.image = [UIImage imageNamed:@"A.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"A\" is for Apple."];
        sentenceLabel.text = [NSString stringWithFormat:@"Apples are my favorite fruit."];
    }else if(Item == @"Bb"){
        lrgIMG.image = [UIImage imageNamed:@"B.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"B\" is for Boy."];
        sentenceLabel.text = [NSString stringWithFormat:@"The Boy kicked the ball."];
    }else if(Item == @"Cc"){
        lrgIMG.image = [UIImage imageNamed:@"C.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"C\" is for Camel."];
        sentenceLabel.text = [NSString stringWithFormat:@"The Camel had two humps."];
    }else if(Item == @"Dd"){
        lrgIMG.image = [UIImage imageNamed:@"D.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"D\" is for Dog."];
        sentenceLabel.text = [NSString stringWithFormat:@"The Dog played in the park."];
    }else if(Item == @"Ee"){
        lrgIMG.image = [UIImage imageNamed:@"E.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"E\" is for Elephant."];
        sentenceLabel.text = [NSString stringWithFormat:@"We saw an Elephant at the Zoo."];
    }else if(Item == @"Ff"){
        lrgIMG.image = [UIImage imageNamed:@"F.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"F\" is for Frog."];
        sentenceLabel.text = [NSString stringWithFormat:@"I almost caught a Frog."];
    }else if(Item == @"Gg"){
        lrgIMG.image = [UIImage imageNamed:@"G.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"G\" is for Girl."];
        sentenceLabel.text = [NSString stringWithFormat:@"The Girl ran from the boy."];
    }else if(Item == @"Hh"){
        lrgIMG.image = [UIImage imageNamed:@"H.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"H\" is for Heart."];
        sentenceLabel.text = [NSString stringWithFormat:@"I think you broke my Heart."];
    }else if(Item == @"Ii"){
        lrgIMG.image = [UIImage imageNamed:@"I.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"I\" is for Ice."];
        sentenceLabel.text = [NSString stringWithFormat:@"I like Ice in my water."];
    }else if(Item == @"Jj"){
        lrgIMG.image = [UIImage imageNamed:@"J.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"J\" is for Juice."];
        sentenceLabel.text = [NSString stringWithFormat:@"I love to drink juice in the morning."];
    }else if(Item == @"Kk"){
        lrgIMG.image = [UIImage imageNamed:@"K.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"K\" is for Kid."];
        sentenceLabel.text = [NSString stringWithFormat:@"I know I'm a Kid, but I'm getting older."];
    }else if(Item == @"Ll"){
        lrgIMG.image = [UIImage imageNamed:@"L.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"L\" is for Lemon."];
        sentenceLabel.text = [NSString stringWithFormat:@"When life gives you Lemons, shoot it in your enemies eyes"];
    }else if(Item == @"Mm"){
        lrgIMG.image = [UIImage imageNamed:@"M.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"M\" is for Mouse."];
        sentenceLabel.text = [NSString stringWithFormat:@"I fed my pet Mouse some cheese today."];
    }else if(Item == @"Nn"){
        lrgIMG.image = [UIImage imageNamed:@"N.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"N\" is for Nose."];
        sentenceLabel.text = [NSString stringWithFormat:@"I think I have a runny Nose from my cold."];
    }else if(Item == @"Oo"){
        lrgIMG.image = [UIImage imageNamed:@"O.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"O\" is for Orange."];
        sentenceLabel.text = [NSString stringWithFormat:@"Orange is the color of a hunting vest."];
    }else if(Item == @"Pp"){
        lrgIMG.image = [UIImage imageNamed:@"P.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"P\" is for Pig."];
        sentenceLabel.text = [NSString stringWithFormat:@"You know what they say about a man who owns a lot of Pigs..."];
    }else if(Item == @"Qq"){
        lrgIMG.image = [UIImage imageNamed:@"Q.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"Q\" is for Queen."];
        sentenceLabel.text = [NSString stringWithFormat:@"I thnk my friends is a drama Queen."];
    }else if(Item == @"Rr"){
        lrgIMG.image = [UIImage imageNamed:@"R.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"R\" is for Rain."];
        sentenceLabel.text = [NSString stringWithFormat:@"I like it better in the Rain."];
    }else if(Item == @"Ss"){
        lrgIMG.image = [UIImage imageNamed:@"S.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"S\" is for Sheep."];
        sentenceLabel.text = [NSString stringWithFormat:@"Beware of the sheep with an \"X\" on his back!."];
    }else if(Item == @"Tt"){
        lrgIMG.image = [UIImage imageNamed:@"T.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"T\" is for Turtle."];
        sentenceLabel.text = [NSString stringWithFormat:@"Turtles are great, especially in soup!"];
    }else if(Item == @"Uu"){
        lrgIMG.image = [UIImage imageNamed:@"U.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"U\" is for Umbrella."];
        sentenceLabel.text = [NSString stringWithFormat:@"Umbrellas are meant to block the sun, not the rain"];
    }else if(Item == @"Vv"){
        lrgIMG.image = [UIImage imageNamed:@"V.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"V\" is for Vault."];
        sentenceLabel.text = [NSString stringWithFormat:@"My phone has a photo Vault.  Does yours?"];
    }else if(Item == @"Ww"){
        lrgIMG.image = [UIImage imageNamed:@"W.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"W\" is for Wagon."];
        sentenceLabel.text = [NSString stringWithFormat:@"I had a Wagon once, but I lost it in the woods."];
    }else if(Item == @"Xx"){
        lrgIMG.image = [UIImage imageNamed:@"X.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"X\" is for Xiphoid :)"];
        sentenceLabel.text = [NSString stringWithFormat:@"The Xiphoid process is located at the base of your sternum."];
    }else if(Item == @"Yy"){
        lrgIMG.image = [UIImage imageNamed:@"Y.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"Y\" is a Question. HAHA"];
        sentenceLabel.text = [NSString stringWithFormat:@"Why Not!?."];
    }else if(Item == @"Zz"){
        lrgIMG.image = [UIImage imageNamed:@"Z.jpg"];
        subSubLabel.text = [NSString stringWithFormat:@"\"Z\" is for Zebra."];
        sentenceLabel.text = [NSString stringWithFormat:@"Does a Zebra have black stripes or white stripes?"];
    }
    
    [UIView beginAnimations:nil context:nil];
    subView.frame = CGRectMake(0.0f, 0.0f, subView.frame.size.width, subView.frame.size.height);
    
    [UIView commitAnimations];
}
@end
