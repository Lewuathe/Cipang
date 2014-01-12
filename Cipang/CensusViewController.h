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
    
    IBOutlet UIButton *hokkaidoBtn;
    IBOutlet UIButton *aomoriBtn;
    IBOutlet UIButton *iwateBtn;
    IBOutlet UIButton *miyagiBtn;
    IBOutlet UIButton *akitaBtn;
    IBOutlet UIButton *yamagataBtn;
    IBOutlet UIButton *fukushimaBtn;
    IBOutlet UIButton *ibarakiBtn;
    IBOutlet UIButton *tochigiBtn;
    IBOutlet UIButton *gummaBtn;
    IBOutlet UIButton *saitamaBtn;
    IBOutlet UIButton *chibaBtn;
    IBOutlet UIButton *tokyoBtn;
    IBOutlet UIButton *kanagawaBtn;
    IBOutlet UIButton *niigataBtn;
    IBOutlet UIButton *toyamaBtn;
    IBOutlet UIButton *ishikawaBtn;
    IBOutlet UIButton *fukuiBtn;
    IBOutlet UIButton *yamanashiBtn;
    IBOutlet UIButton *naganoBtn;
    IBOutlet UIButton *gifuBtn;
    IBOutlet UIButton *shizuokaBtn;
    IBOutlet UIButton *aichiBtn;
    IBOutlet UIButton *mieBtn;
    IBOutlet UIButton *shigaBtn;
    IBOutlet UIButton *kyotoBtn;
    IBOutlet UIButton *osakaBtn;
    IBOutlet UIButton *hyogoBtn;
    IBOutlet UIButton *naraBtn;
    IBOutlet UIButton *wakayamaBtn;
    IBOutlet UIButton *tottoriBtn;
    IBOutlet UIButton *shimaneBtn;
    IBOutlet UIButton *okayamaBtn;
    IBOutlet UIButton *hiroshimaBtn;
    IBOutlet UIButton *yamaguchiBtn;
    IBOutlet UIButton *tokushimaBtn;
    IBOutlet UIButton *kagawaBtn;
    IBOutlet UIButton *ehimeBtn;
    IBOutlet UIButton *kochiBtn;
    IBOutlet UIButton *fukuokaBtn;
    IBOutlet UIButton *sagaBtn;
    IBOutlet UIButton *nagasakiBtn;
    IBOutlet UIButton *kumamotoBtn;
    IBOutlet UIButton *ooitaBtn;
    IBOutlet UIButton *miyazakiBtn;
    IBOutlet UIButton *kagoshimaBtn;
    IBOutlet UIButton *okinawaBtn;
    
}

@end
