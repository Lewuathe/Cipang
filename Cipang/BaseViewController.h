//
//  BaseViewController.h
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController <UIGestureRecognizerDelegate>

- (IBAction)handlePinchGesture:(id)sender;

@end
