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
    
    NSString *appId = @"6d736004f09f38d8fc8bb827201c1ecf9b4cb84f";
    LEStatsRequest *request = [[LEStatsRequest alloc] initWithAppId:appId];
//    NSDictionary *params = @{@"lang":@"E",@"statsDataId":@"0003033022"};
    NSDictionary *params = @{@"statsDataId":@"0003033022"};
    
    Handler yourHandler = ^(StatsResponse* response) {
        NSLog(@"Receive API response");
        // Write your handler
        _population = [[Population alloc] initWithDataInf:response.dataDataInf];
        NSArray *totalPopulation = [_population.totalDistribution subarrayWithRange:NSMakeRange(1, 21)];
        NSLog(@"%@",totalPopulation);
        /*
        [barChart setYLabels:totalPopulation];
        [barChart setXLabels:@[@"0-4",@"5-9",@"10-14",@"15-19",@"20-24",@"25-29",@"30-34",@"35-39",@"40-44",@"45-49",@"50-54",
                               @"55-59",@"60-64",@"65-69",@"70-74",@"75-79",@"80-84",@"85-89",@"90-94",@"95-99",@"100-"]];
         */
        
//        [barChart setXLabels:@[@"0-4",@"SEP 2",@"SEP 3",@"SEP 4",@"SEP 5"]];
        [barChart setYValues:totalPopulation];


        [barChart strokeChart];
    };
    [request data:params withHandler:yourHandler];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
