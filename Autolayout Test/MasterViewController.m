//
//  MasterViewController.m
//  Autolayout Test
//
//  Created by Mikhail Merkulov on 10/16/12.
//  Copyright (c) 2012 Mikhail Merkulov. All rights reserved.
//

#import "MasterViewController.h"
#import "ProblemViewController.h"
#import "SolveByCodeViewController.h"
#import "AutoViewController.h"
#import "AutoDemoViewController.h"

@interface MasterViewController () {
    
}
@end

@implementation MasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Auto Layout Demo", @"Auto Layout Demo");
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"The problem";
            break;
        case 1:
            cell.textLabel.text = @"With code";
            break;
        case 2:
            cell.textLabel.text = @"Auto layout";
            break;
        case 3:
            cell.textLabel.text = @"Constraints demo";        
            break;
        default:
            break;
    }
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *controller;
    switch (indexPath.row) {
        case 0:
            controller = [[ProblemViewController alloc] initWithNibName:@"ProblemViewController" bundle:nil];
            break;
        case 1:
            controller = [[SolveByCodeViewController alloc] initWithNibName:@"SolveByCodeViewController" bundle:nil];
            break;
        case 2:
            controller = [[AutoViewController alloc] initWithNibName:@"AutoViewController" bundle:nil];
            break;
        case 3:
            controller = [[AutoDemoViewController alloc] initWithNibName:@"AutoDemoViewController" bundle:nil];
            break;
        default:
            break;
    }
    
    [self.navigationController pushViewController:controller animated:YES];
}

@end
