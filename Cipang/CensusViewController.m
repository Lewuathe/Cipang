//
//  CensusViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "CensusViewController.h"
#import "Population.h"

@interface CensusViewController () {
    Population *_population;
}

@end

@implementation CensusViewController

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
    
    NSString *manPath = [bundle pathForResource:@"man_population_2010" ofType:@"plist"];
    NSDictionary *manRoot = [NSDictionary dictionaryWithContentsOfFile:manPath];
    NSArray *manPopulation = [manRoot objectForKey:@"Populations"];

    manBarChart.transform = CGAffineTransformMakeRotation(270 * M_PI / 180.0);
    [manBarChart setYValues:[manPopulation subarrayWithRange:NSMakeRange(0, 21)]];
    [manBarChart strokeChart];

    NSString *womanPath = [bundle pathForResource:@"woman_population_2010" ofType:@"plist"];
    NSDictionary *womanRoot = [NSDictionary dictionaryWithContentsOfFile:womanPath];
    NSArray *womanPopulation = [womanRoot objectForKey:@"Populations"];

    womenBarChart.transform = CGAffineTransformMakeRotation(270.0 * M_PI / 180.0);
    womenBarChart.transform = CGAffineTransformScale(womenBarChart.transform, 1, -1);
    [womenBarChart setYValues:[womanPopulation subarrayWithRange:NSMakeRange(0, 21)]];
    [womenBarChart strokeChart];
    
    
    
    NSString *transitionPath = [bundle pathForResource:@"total_population_transition" ofType:@"plist"];
    NSDictionary *transitionRoot = [NSDictionary dictionaryWithContentsOfFile:transitionPath];
    NSArray *transitionPopulation = [transitionRoot objectForKey:@"Populations"];
    [populationTransition setXLabels:@[@"1980",@"1985",@"1990",@"1995",@"2000",@"2005",@"2010"]];

    NSArray * dataArray = transitionPopulation;
    PNLineChartData *data01 = [PNLineChartData new];
    data01.color = PNFreshGreen;
    data01.itemCount = populationTransition.xLabels.count;
    CGFloat baseValue = [[dataArray objectAtIndex:0] floatValue];
    data01.getData = ^(NSUInteger index) {
        CGFloat yValue = [[dataArray objectAtIndex:index] floatValue] - baseValue;
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    populationTransition.chartData = @[data01];
    [populationTransition strokeChart];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
