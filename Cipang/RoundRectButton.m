//
//  RoundRectButton.m
//  Cipang
//
//  Created by Sasaki Kai on 1/10/14.
//  Copyright (c) 2014 Sasaki Kai. All rights reserved.
//

#import "RoundRectButton.h"

@implementation RoundRectButton


-(id)initWithCoder:(NSCoder*)aDecoder {
    self = [super initWithCoder:aDecoder];
	
    if (self) {
        self.layer.borderColor = [UIColor clearColor].CGColor;
        self.layer.borderWidth = 1.0f;
        self.layer.cornerRadius = 7.5f;
    }
	
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 1.0f;
        self.layer.cornerRadius = 7.5f;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
