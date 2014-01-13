//
//  PieChart2ViewController.h
//  Cipang
//
//  Created by Sasaki Kai on 1/13/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "BaseViewController.h"
#import "XYPieChart.h"

@interface PieChart2ViewController : BaseViewController <XYPieChartDataSource, XYPieChartDelegate> {
    IBOutlet XYPieChart *chart1;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *data1;
    
    IBOutlet XYPieChart *chart2;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *data2;
    
@protected
    NSArray *_category1;
    NSArray *_categoryName1;
    NSArray *_category2;
    NSArray *_categoryName2;
    NSArray *_sliceColors;
}


@end
