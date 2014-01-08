//
//  CensusViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "CensusViewController.h"
#import "Population.h"
#import "UIPopoverController+FlatUI.h"

@interface CensusViewController () {
    Population *_population;
    
    NSArray *_transitionPopulation;
    UIPopoverController *_popoverController;
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
    _transitionPopulation = [transitionRoot objectForKey:@"Populations"];
    [populationTransition setXLabels:@[@"1980",@"1985",@"1990",@"1995",@"2000",@"2005",@"2010"]];

    NSArray * dataArray = _transitionPopulation;
    PNLineChartData *data01 = [PNLineChartData new];
    data01.color = PNFreshGreen;
    data01.itemCount = populationTransition.xLabels.count;
    CGFloat baseValue = [[dataArray objectAtIndex:0] floatValue];
    data01.getData = ^(NSUInteger index) {
        CGFloat yValue = [[dataArray objectAtIndex:index] floatValue] - baseValue;
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    populationTransition.chartData = @[data01];
    populationTransition.delegate = self;
    [populationTransition strokeChart];
}

-(void)userClickedOnLineKeyPoint:(CGPoint)point lineIndex:(NSInteger)lineIndex andPointIndex:(NSInteger)pointIndex{
    NSLog(@"Click Key on line %f, %f line index is %d and point index is %d",point.x, point.y,(int)lineIndex, (int)pointIndex);
    
    UIViewController *vc = [[UIViewController alloc] init];
    vc.preferredContentSize = CGSizeMake(150, 50);
//    vc.view.backgroundColor = [UIColor whiteColor];
    vc.title = @"Population";
    vc.navigationController.navigationBar.titleTextAttributes = @{UITextAttributeFont: [UIFont boldFlatFontOfSize:18],UITextAttributeTextColor: [UIColor whiteColor]};
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 50)];
    NSLog(@"%@", [_transitionPopulation objectAtIndex:pointIndex]);
    label.text = [[_transitionPopulation objectAtIndex:pointIndex] stringValue];
    [vc.view addSubview:label];
    
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    _popoverController = [[UIPopoverController alloc] initWithContentViewController:nc];
    [_popoverController configureFlatPopoverWithBackgroundColor:[UIColor turquoiseColor] cornerRadius:9.0];
    _popoverController.delegate = self;
    
    float baseX = populationTransition.frame.origin.x;
    float baseY = populationTransition.frame.origin.y;
    [_popoverController presentPopoverFromRect:CGRectMake(baseX + point.x, baseY + point.y, 0, 0) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

-(void)userClickedOnLinePoint:(CGPoint)point lineIndex:(NSInteger)lineIndex{
//    NSLog(@"Click on line %f, %f, line index is %d",point.x, point.y, (int)lineIndex);
}


#pragma mark - UIPopoverControllerDelegate Methods

- (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController
{
    return YES;
}

- (void) popoverControllerDidDismissPopover:(UIPopoverController *)popoverController {
    _popoverController = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
