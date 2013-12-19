//
//  CensusViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "CensusViewController.h"

@interface CensusViewController ()

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
//    NSDictionary *params = @{@"lang":@"E",@"statsDataId":@"0003003333"};
    NSDictionary *params = @{@"statsDataId":@"0003033021"};
    
    Handler yourHandler = ^(StatsResponse* response) {
        NSLog(@"Receive API response");
        // Write your handler
        Value *value = response.dataDataInf.valueList[0];
        NSLog(@"%d", response.dataDataInf.valueList.count);
        NSLog(@"%@",value.v);
        [barChart setXLabels:@[@"SEP 1",@"SEP 2",@"SEP 3",@"SEP 4",@"SEP 5"]];
        [barChart setYValues:@[@1,  @10, @2, @6, @3]];
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
