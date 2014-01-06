//
//  EducationViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 1/5/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "EducationViewController.h"

@interface EducationViewController ()

@end

@implementation EducationViewController

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
	// Do any additional setup after loading the view.
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"education_category_2010" ofType:@"plist"];
    NSDictionary *root = [NSDictionary dictionaryWithContentsOfFile:path];
    _category = [[root objectForKey:@"Category"] subarrayWithRange:NSMakeRange(2, 7)];
    
    
    [chart setDelegate:self];
    [chart setDataSource:self];
    [chart setAnimationSpeed:1.0];
    [chart setLabelFont:[UIFont fontWithName:@"Avenir" size:24]];
    [chart setLabelRadius:160];
    [chart setShowPercentage:YES];
    [chart setPieBackgroundColor:[UIColor colorWithWhite:0.95 alpha:1]];
    [chart setLabelShadowColor:[UIColor blackColor]];
    
    _sliceColors = [NSArray arrayWithObjects:
                    [UIColor colorWithRed:255/255.0 green:127/255.0 blue:127/255.0 alpha:1],
                    [UIColor colorWithRed:255/255.0 green:127/255.0 blue:191/255.0 alpha:1],
                    [UIColor colorWithRed:255/255.0 green:127/255.0 blue:255/255.0 alpha:1],
                    [UIColor colorWithRed:191/255.0 green:127/255.0 blue:255/255.0 alpha:1],
                    [UIColor colorWithRed:127/255.0 green:127/255.0 blue:255/255.0 alpha:1],
                    [UIColor colorWithRed:127/255.0 green:191/255.0 blue:255/255.0 alpha:1],
                    [UIColor colorWithRed:127/255.0 green:255/255.0 blue:255/255.0 alpha:1],
                    [UIColor colorWithRed:127/255.0 green:255/255.0 blue:191/255.0 alpha:1],
                    [UIColor colorWithRed:127/255.0 green:255/255.0 blue:127/255.0 alpha:1],
                    [UIColor colorWithRed:191/255.0 green:255/255.0 blue:127/255.0 alpha:1],
                    [UIColor colorWithRed:255/255.0 green:255/255.0 blue:127/255.0 alpha:1],
                    [UIColor colorWithRed:255/255.0 green:191/255.0 blue:127/255.0 alpha:1],
                    [UIColor colorWithRed:219/255.0 green:219/255.0 blue:255/255.0 alpha:1], nil];
    
    
    /*
    _categoryName = [NSArray arrayWithObjects:
                     @"卒業者　小学校・中学校", @"卒業者　高校・旧中", @"卒業者　短大・高専",
                     @"卒業者　大学・大学院", @"卒業者　不詳", @"在学者", @"未就学者", nil];
     */
    
    _categoryName = [NSArray arrayWithObjects:
                     @"Junior high school graduate", @"High school graduate", @"Junior college graduate",
                     @"College graduate", @"Unknown graduate", @"Current students", @"Preschool" ,nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
