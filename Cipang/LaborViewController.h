//
//  LaborViewController.h
//  Cipang
//
//  Created by Sasaki Kai on 1/4/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "BaseViewController.h"
#import "XYPieChart.h"

@interface LaborViewController : BaseViewController <XYPieChartDelegate, XYPieChartDataSource> {
    IBOutlet XYPieChart *chart;
    IBOutlet UILabel *label;
    IBOutlet UILabel *number;
}

@end
