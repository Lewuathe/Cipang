//
//  Population.h
//  Cipang
//
//  Created by Sasaki Kai on 12/19/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "BaseModel.h"
#import "LEStatsRequest.h"

@interface Population : BaseModel {
    NSString *div0_4;
    NSString *div5_9;
    NSString *div10_14;
    NSString *div15_19;
    NSString *div20_24;
    NSString *div25_29;
    NSString *div30_34;
    NSString *div35_39;
    NSString *div40_44;
    NSString *div45_49;
    NSString *div50_54;
    NSString *div55_59;
    NSString *div60_64;
    NSString *div65_69;
    NSString *div70_74;
    NSString *div75_79;
    NSString *div80_84;
    NSString *div85_89;
    NSString *div90_94;
    NSString *div95_99;
    NSString *div100_;
    
    NSArray *totalDistribution;
    NSArray *manDistribution;
    NSArray *womenDistribution;
}

@property (readonly) NSArray *totalDistribution;
@property (readonly) NSArray *manDistribution;
@property (readonly) NSArray *womenDistribution;

- (Population*)initWithDataInf:(DataInf*)dataInf;

@end
