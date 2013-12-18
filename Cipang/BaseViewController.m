//
//  BaseViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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
}

- (IBAction)handlePinchGesture:(id)sender {
    NSLog(@"handlePinchGesture");
    CATransition *transition = [CATransition animation];
    transition.duration = 0.4;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    // 例えば
    transition.type = kCATransitionFade;
    // 例えば
    transition.subtype = kCATransitionFromTop;
    
    // NavigationController のアニメーションを変更する
    [self.navigationController.view.layer addAnimation:transition forKey:@"dissolve_transition"];
    [self.navigationController popToRootViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
