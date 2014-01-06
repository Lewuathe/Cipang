//
//  LaborViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 1/4/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "LaborViewController.h"

@interface LaborViewController () {

}

@end

@implementation LaborViewController

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
    NSLog(@"This is labor view controller");
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"labor_category_2010" ofType:@"plist"];
    NSDictionary *root = [NSDictionary dictionaryWithContentsOfFile:path];
    _category = [[root objectForKey:@"Category"] subarrayWithRange:NSMakeRange(1, 12)];
    

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
                     @"管理的職業従事者", @"専門的・技術的職業従事者",
                     @"事務従事者", @"販売従事者", @"サービス職業従事者", @"保安職業従事者",
                     @"農林漁業従事者", @"生産工程従事者", @" 輸送・機械運転従事者", @" 建設・採掘従事者",
                     @"運搬・清掃・包装等従事者", @"分類不能の職業", nil];
     */
    _categoryName = [NSArray arrayWithObjects:
                     @"Management", @"Profession", @"Minor career", @"Sales", @"Service", @"Security",
                     @"Agricultural and fisheries industries", @"Production process", @"Transportation", @"Construction",
                     @"Dustman", @"Unknown", nil];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
