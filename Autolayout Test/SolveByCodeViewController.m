//
//  ProblemViewController.m
//  Autolayout Test
//
//  Created by Mikhail Merkulov on 10/16/12.
//  Copyright (c) 2012 Mikhail Merkulov. All rights reserved.
//

#import "SolveByCodeViewController.h"

@interface SolveByCodeViewController ()

@end

@implementation SolveByCodeViewController

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

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                         duration:(NSTimeInterval)duration
{
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft
        ||  toInterfaceOrientation == UIInterfaceOrientationLandscapeRight)
    {
        NSLog(@"%f", self.view.frame.size.height);
        
        CGRect rect = self.image1.frame;
        rect.size.width = 350;
        rect.size.height = 110;
        self.image1.frame = rect;
        
        rect = self.image2.frame;
        rect.origin.x = 380;
        rect.size.width = 80;
        rect.size.height = 50;
        self.image2.frame = rect;
        
        rect = self.image3.frame;
        rect.origin.x = 380;
        rect.origin.y = 80;
        rect.size.width = 80;
        rect.size.height = 50;
        self.image3.frame = rect;
        
        rect = self.text1.frame;
        rect.origin.y = 140;
        rect.size.height = 109;
        self.text1.frame = rect;
    }
    else
    {
        CGRect rect = self.image1.frame;
        rect.size.width = 190;
        rect.size.height = 184;
        self.image1.frame = rect;
        
        rect = self.image2.frame;
        rect.origin.x = 220;
        rect.size.width = 80;
        rect.size.height = 87;
        self.image2.frame = rect;
        
        rect = self.image3.frame;
        rect.origin.x = 220;
        rect.origin.y = 116;
        rect.size.width = 80;
        rect.size.height = 87;
        self.image3.frame = rect;
        
        rect = self.text1.frame;
        rect.origin.y = 213;
        rect.size.height = 183;
        self.text1.frame = rect;

    }
}

@end
