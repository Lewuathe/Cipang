
//
//  Population.m
//  Cipang
//
//  Created by Sasaki Kai on 12/19/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "Population.h"

@implementation Population

@synthesize totalDistribution;
@synthesize manDistribution;
@synthesize womenDistribution;

- (Population*)initWithDataInf:(DataInf*)dataInf {
    self = [super init];
    if (self != nil) {
        NSArray *valueList = dataInf.valueList;
        totalDistribution = [NSArray array];
        manDistribution   = [NSArray array];
        womenDistribution = [NSArray array];
        for (int i = 0; i < valueList.count; i++) {
            Value *value = valueList[i];
            NSNumber *v = [NSNumber numberWithInt:[value.v intValue] / 1000.0];
//            NSNumber *v = [NSNumber numberWithInt:2];
            if ([self isTotal:value]) {
                totalDistribution = [totalDistribution arrayByAddingObject:v];
            } else if ([self isMan:value]) {
                manDistribution = [manDistribution arrayByAddingObject:v];
            } else if ([self isWomen:value]) {
                womenDistribution = [womenDistribution arrayByAddingObject:v];
            }
        }
    }
    return self;
}

// cat01 is sex
// cat03 is nationality

- (BOOL)isTotal:(Value*)value {

    if ([value.cat01 isEqualToString:@"000"] && [value.cat03 isEqualToString:@"000"] &&
        [value.area isEqualToString:@"00000"] && (200 <= [value.cat02 intValue] <= 600)) {
        return YES;
    } else {
        return NO;
    }
    
}

- (BOOL)isMan:(Value*)value {
    if ([value.cat01 isEqualToString:@"001"] && [value.cat03 isEqualToString:@"000"] &&
        [value.area isEqualToString:@"00000"] && (200 <= [value.cat02 intValue] <= 600)) {
        return YES;
    } else {
        return NO;
    }
    
}

- (BOOL)isWomen:(Value*)value {
    if ([value.cat01 isEqualToString:@"002"] && [value.cat03 isEqualToString:@"000"] &&
        [value.area isEqualToString:@"00000"] && (200 <= [value.cat02 intValue] <= 600)) {
        return YES;
    } else {
        return NO;
    }
    
}

@end
