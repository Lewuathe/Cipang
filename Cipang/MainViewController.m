//
//  MainViewController.m
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    titleButton.buttonColor = [UIColor concreteColor];
    titleButton.shadowColor = [UIColor asbestosColor];
    titleButton.shadowHeight = 3.0f;
    titleButton.cornerRadius = 6.0f;
    [titleButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [titleButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button1.buttonColor = [UIColor turquoiseColor];
    button1.shadowColor = [UIColor greenSeaColor];
    button1.shadowHeight = 3.0f;
    button1.cornerRadius = 6.0f;
    [button1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button2.buttonColor = [UIColor carrotColor];
    button2.shadowColor = [UIColor pumpkinColor];
    button2.shadowHeight = 3.0f;
    button2.cornerRadius = 6.0f;
    [button2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button3.buttonColor = [UIColor peterRiverColor];
    button3.shadowColor = [UIColor belizeHoleColor];
    button3.shadowHeight = 3.0f;
    button3.cornerRadius = 6.0f;
    [button3 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
