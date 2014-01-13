//
//  HouseViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 1/5/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "HouseViewController.h"
#import "FlatUIKit.h"

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
    _category1 = [[root objectForKey:@"Category"] subarrayWithRange:NSMakeRange(3, 7)];
    
    
    [chart1 setDelegate:self];
    [chart1 setDataSource:self];
    [chart1 setAnimationSpeed:1.0];
    [chart1 setLabelFont:[UIFont fontWithName:@"Avenir" size:24]];
    [chart1 setLabelRadius:160];
    [chart1 setShowPercentage:YES];
    [chart1 setPieBackgroundColor:[UIColor colorWithWhite:0.95 alpha:1]];
    [chart1 setLabelShadowColor:[UIColor blackColor]];
    
    _sliceColors = [NSArray arrayWithObjects:
                    [UIColor turquoiseColor],
                    [UIColor greenSeaColor],
                    [UIColor emerlandColor],
                    [UIColor nephritisColor],
                    //                    [UIColor colorWithRed:184/255.0 green:210/255.0 blue:0/255.0 alpha:1],
                    [UIColor colorWithRed:0/255.0 green:110/255.0 blue:84/255.0 alpha:1],
                    [UIColor colorWithRed:147/255.0 green:202/255.0 blue:118/255.0 alpha:1],
                    [UIColor colorWithRed:105/255.0 green:176/255.0 blue:118/255.0 alpha:1],
                    [UIColor colorWithRed:71/255.0 green:136/255.0 blue:94/255.0 alpha:1],
                    [UIColor colorWithRed:49/255.0 green:103/255.0 blue:69/255.0 alpha:1],
                    [UIColor colorWithRed:62/255.0 green:179/255.0 blue:112/255.0 alpha:1],
                    [UIColor colorWithRed:0/255.0 green:123/255.0 blue:67/255.0 alpha:1],
                    [UIColor colorWithRed:0/255.0 green:85/255.0 blue:46/255.0 alpha:1],
                    [UIColor colorWithRed:0/255.0 green:82/255.0 blue:67/255.0 alpha:1],
                    nil];
    

    _categoryName1 = [NSArray arrayWithObjects:
                     @"Own house", @"Public housing", @"UR", @"Rented house", @"Issued house",
                     @"Lodgings", @"Other", nil];
    
    
    NSString *path2 = [bundle pathForResource:@"house_rent_price" ofType:@"plist"];
    NSDictionary *root2 = [NSDictionary dictionaryWithContentsOfFile:path2];
    _category2 = [root2 objectForKey:@"Prices"];
    
    
    [chart2 setDelegate:self];
    [chart2 setDataSource:self];
    [chart2 setAnimationSpeed:1.0];
    [chart2 setLabelFont:[UIFont fontWithName:@"Avenir" size:24]];
    [chart2 setLabelRadius:160];
    [chart2 setShowPercentage:YES];
    [chart2 setPieBackgroundColor:[UIColor colorWithWhite:0.95 alpha:1]];
    [chart2 setLabelShadowColor:[UIColor blackColor]];
    
    _categoryName2 = [NSArray arrayWithObjects:
                      @"Less ¥50", @"¥50~10,000", @"¥10,000~20,000", @"¥20,000~40,000", @"¥40,000~60,000",
                      @"¥60,000~80,000", @"¥80,000~100,000", @"¥100,000~150,000", @"¥150,000~200,000",
                      @"More ¥200,000", @"Unknown", nil];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
