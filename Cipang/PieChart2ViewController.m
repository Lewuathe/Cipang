//
//  PieChart2ViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 1/13/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "PieChart2ViewController.h"

@interface PieChart2ViewController ()

@end

@implementation PieChart2ViewController

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
}

- (void)viewDidAppear:(BOOL)animated {
    [chart1 reloadData];
    [chart2 reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - XYPieChart Data Source

- (NSUInteger)numberOfSlicesInPieChart:(XYPieChart *)pieChart
{
    NSLog(@"number of chart");
    if (pieChart == chart1) {
        return _category1.count;
    } else {
        return _category2.count;
    }
}

- (CGFloat)pieChart:(XYPieChart *)pieChart valueForSliceAtIndex:(NSUInteger)index
{
    if (pieChart == chart1) {
        return [[_category1 objectAtIndex:index] intValue];
    } else {
        return [[_category2 objectAtIndex:index] intValue];
    }
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
    if (pieChart == chart1) {
        label1.text = @"";
        data1.text  = @"";
    } else {
        label2.text = @"";
        data2.text  = @"";
    }
}

- (void)pieChart:(XYPieChart *)pieChart didSelectSliceAtIndex:(NSUInteger)index
{
    NSLog(@"did select slice at index %d",index);
    
    NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
    
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setGroupingSeparator:@","];
    [formatter setGroupingSize:3];
    
    if (pieChart == chart1) {
        label1.text = [_categoryName1 objectAtIndex:index];
        data1.text = [formatter stringForObjectValue:[_category1 objectAtIndex:index]];
    } else {
        label2.text = [_categoryName2 objectAtIndex:index];
        data2.text  = [formatter stringForObjectValue:[_category2 objectAtIndex:index]];
    }
}



@end
