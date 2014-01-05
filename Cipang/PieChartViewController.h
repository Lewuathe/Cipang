//
//  PieChartViewController.h
//  Cipang
//
//  Created by Sasaki Kai on 1/5/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "BaseViewController.h"
#import "XYPieChart.h"

@interface PieChartViewController : BaseViewController <XYPieChartDataSource, XYPieChartDelegate> {
    IBOutlet XYPieChart *chart;
    IBOutlet UILabel *label;
    IBOutlet UILabel *data;
    
@protected
    NSArray *_category;
    NSArray *_categoryName;
    NSArray *_sliceColors;
}

@end
