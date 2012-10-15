//
//  ProblemViewController.m
//  Autolayout Test
//
//  Created by Mikhail Merkulov on 10/16/12.
//  Copyright (c) 2012 Mikhail Merkulov. All rights reserved.
//

#import "ProblemViewController.h"

@interface ProblemViewController ()

@end

@implementation ProblemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    if (self.interfaceOrientation == UIInterfaceOrientationLandscapeLeft
        ||  self.interfaceOrientation == UIInterfaceOrientationLandscapeRight)
    {
        UIView *img1 = [self.view viewWithTag:100];
        NSLog(@"%f", img1.frame.size.height);
    }
}

@end
