//
//  HouseViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 1/5/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "HouseViewController.h"

@interface HouseViewController ()

@end

@implementation HouseViewController

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
    NSString *path = [bundle pathForResource:@"house_category_2010" ofType:@"plist"];
    NSDictionary *root = [NSDictionary dictionaryWithContentsOfFile:path];
    _category = [[root objectForKey:@"Category"] subarrayWithRange:NSMakeRange(3, 7)];
    
    
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
                     @"主世帯 持ち家", @"主世帯 公営の借家", @"世帯 都市再生機構・公社の借家", @"主世帯 民営の借家",
                     @"主世帯 給与住宅", @"間借り", @"住宅以外に住む一般世帯", nil];
     */
    _categoryName = [NSArray arrayWithObjects:
                     @"Own house", @"Public housing", @"UR", @"Rented house", @"Issued house",
                     @"Lodgings", @"Other", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
