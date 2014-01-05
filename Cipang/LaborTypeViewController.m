//
//  LaborTypeViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 1/5/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "LaborTypeViewController.h"

@interface LaborTypeViewController ()

@end

@implementation LaborTypeViewController

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
    NSString *path = [bundle pathForResource:@"labor_type_2010" ofType:@"plist"];
    NSDictionary *root = [NSDictionary dictionaryWithContentsOfFile:path];
    _category = [[root objectForKey:@"Category"] subarrayWithRange:NSMakeRange(3, 10)];
    
    
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
    
    _categoryName = [NSArray arrayWithObjects:
                     @"（就業者）主に仕事", @"（就業者）家事のほか仕事",
                     @"（就業者）通学のかたわら仕事", @"（就業者）休業者", @"完全失業者",
                     @"非労働力人口", @"家事", @"通学", @"その他", @"不詳", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
