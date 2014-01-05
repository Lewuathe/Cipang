//
//  LaborViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 1/4/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "LaborViewController.h"

@interface LaborViewController () {
    NSArray *_category;
    NSArray *_sliceColors;
    NSArray *_categoryName;
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

- (void)viewDidAppear:(BOOL)animated
{
    [chart reloadData];
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
//    [chart setUserInteractionEnabled:NO];
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
                     @"管理的職業従事者", @"専門的・技術的職業従事者",
                     @"事務従事者", @"販売従事者", @"サービス職業従事者", @"保安職業従事者",
                     @"農林漁業従事者", @"生産工程従事者", @" 輸送・機械運転従事者", @" 建設・採掘従事者",
                     @"運搬・清掃・包装等従事者", @"分類不能の職業", nil];
    
}

#pragma mark - XYPieChart Data Source

- (NSUInteger)numberOfSlicesInPieChart:(XYPieChart *)pieChart
{
    NSLog(@"number of chart");
    return _category.count;
}

- (CGFloat)pieChart:(XYPieChart *)pieChart valueForSliceAtIndex:(NSUInteger)index
{
    return [[_category objectAtIndex:index] intValue];
}

- (NSString*)pieChart:(XYPieChart *)pieChart textForSliceAtIndex:(NSUInteger)index {
    return @"aaaaaaa";
}

- (UIColor *)pieChart:(XYPieChart *)pieChart colorForSliceAtIndex:(NSUInteger)index
{
    return [_sliceColors objectAtIndex:index];
}

#pragma mark - XYPieChart Delegate
- (void)pieChart:(XYPieChart *)pieChart willSelectSliceAtIndex:(NSUInteger)index
{
    NSLog(@"will select slice at index %d",index);
}
- (void)pieChart:(XYPieChart *)pieChart willDeselectSliceAtIndex:(NSUInteger)index
{
    NSLog(@"will deselect slice at index %d",index);
}
- (void)pieChart:(XYPieChart *)pieChart didDeselectSliceAtIndex:(NSUInteger)index
{
    NSLog(@"did deselect slice at index %d",index);
    label.text = @"";
    number.text = @"";
}
- (void)pieChart:(XYPieChart *)pieChart didSelectSliceAtIndex:(NSUInteger)index
{
    NSLog(@"did select slice at index %d",index);
    label.text = [_categoryName objectAtIndex:index];
    
    NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
    
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setGroupingSeparator:@","];
    [formatter setGroupingSize:3];
    
    number.text = [formatter stringForObjectValue:[_category objectAtIndex:index]];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
