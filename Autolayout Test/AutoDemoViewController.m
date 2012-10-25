//
//  AutoDemoViewController.m
//  Autolayout Test
//
//  Created by Mikhail Merkulov on 10/25/12.
//  Copyright (c) 2012 Mikhail Merkulov. All rights reserved.
//

#import "AutoDemoViewController.h"

@interface AutoDemoViewController ()

@end

@implementation AutoDemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.subView setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //self.label2.text = @"A VERY IMPORTANT TITLE";
    
    /*
    UILabel *lbl1 = [[UILabel alloc] init];
    lbl1.text = @"Really big stupid label title:";
    [lbl1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    lbl1.backgroundColor = [UIColor colorWithRed:210.0/255.0 green:210.0/255.0 blue:210.0/255.0 alpha:1.0];
    [self.subView addSubview:lbl1];
    
    UILabel *lbl2 = [[UILabel alloc] init];
    lbl2.text = @"A VERY IMPORTANT TITLE";
    lbl2.backgroundColor = [UIColor colorWithRed:210.0/255.0 green:210.0/255.0 blue:210.0/255.0 alpha:1.0];
    [lbl2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.subView addSubview:lbl2];
    */
    
    /*
    // |- [label 1]
    NSLayoutConstraint *cn = [NSLayoutConstraint constraintWithItem:lbl1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.subView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:10];
    [self.subView addConstraint:cn];

    // V: |- [label 1]
    cn = [NSLayoutConstraint constraintWithItem:lbl1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.subView attribute:NSLayoutAttributeTop multiplier:1.0 constant:10];
    [self.subView addConstraint:cn];
    
    // [label 1] - [label 2]
    cn = [NSLayoutConstraint constraintWithItem:lbl1 attribute:NSLayoutAttributeBaseline relatedBy:NSLayoutRelationEqual toItem:lbl2 attribute:NSLayoutAttributeBaseline multiplier:1.0 constant:0];
    [self.subView addConstraint:cn];
    cn = [NSLayoutConstraint constraintWithItem:lbl2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:lbl1 attribute:NSLayoutAttributeRight multiplier:1.0 constant:8];
    [self.subView addConstraint:cn];
    
    // [label 2] - |
    cn = [NSLayoutConstraint constraintWithItem:lbl2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationLessThanOrEqual toItem:self.subView attribute:NSLayoutAttributeRight multiplier:1.0 constant:-10];
    [self.subView addConstraint:cn];
    */
    
    /*
    NSDictionary *viewsDict = NSDictionaryOfVariableBindings(lbl1,lbl2);
    
    NSArray *cnArray;
    cnArray = [NSLayoutConstraint constraintsWithVisualFormat:@"|-10-[lbl1]-[lbl2]->=20-|" options:NSLayoutFormatAlignAllBaseline metrics:nil views:viewsDict];
    [self.subView addConstraints:cnArray];
    
    cnArray = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[lbl1]" options:NSLayoutFormatAlignAllBaseline metrics:nil views:viewsDict];
    [self.subView addConstraints:cnArray];
    
    [lbl2 setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
