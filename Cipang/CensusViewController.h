//
//  CensusViewController.h
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlatUIKit.h"
#import "BaseViewController.h"
#import "PNChart.h"
#import "PNLineChartData.h"
#import "PNLineChartDataItem.h"

@interface CensusViewController : BaseViewController <PNChartDelegate, UIPopoverControllerDelegate> {
    IBOutlet PNCircleChart *yearCircle;
    IBOutlet PNBarChart *barChart;
    IBOutlet PNBarChart *manBarChart;
    IBOutlet PNBarChart *womenBarChart;
    
    IBOutlet PNLineChart *populationTransition;
    
}

@end
