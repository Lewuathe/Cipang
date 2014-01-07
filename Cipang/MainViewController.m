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

    // Hide navigation bar
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
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
    [button1 addSubview:[self attachImage:@"population.png"]];
    [button1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button2.buttonColor = [UIColor carrotColor];
    button2.shadowColor = [UIColor pumpkinColor];
    button2.shadowHeight = 3.0f;
    button2.cornerRadius = 6.0f;
    [button2 addSubview:[self attachImage:@"house.png"]];
    [button2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button3.buttonColor = [UIColor peterRiverColor];
    button3.shadowColor = [UIColor belizeHoleColor];
    button3.shadowHeight = 3.0f;
    button3.cornerRadius = 6.0f;
    [button3 addSubview:[self attachImage:@"labor.png"]];
    [button3 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button4.buttonColor = [UIColor amethystColor];
    button4.shadowColor = [UIColor wisteriaColor];
    button4.shadowHeight = 3.0f;
    button4.cornerRadius = 6.0f;
    [button4 addSubview:[self attachImage:@"foreigner.png"]];
    [button4 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button5.buttonColor = [UIColor alizarinColor];
    button5.shadowColor = [UIColor pomegranateColor];
    button5.shadowHeight = 3.0f;
    button5.cornerRadius = 6.0f;
    [button5 addSubview:[self attachImage:@"education.png"]];
    [button5 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button5 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    button6.buttonColor = [UIColor sunflowerColor];
    button6.shadowColor = [UIColor orangeColor];
    button6.shadowHeight = 3.0f;
    button6.cornerRadius = 6.0f;
    [button6 addSubview:[self attachImage:@"family.png"]];
    [button6 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button6 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    settingButton.buttonColor = [UIColor asbestosColor];
    settingButton.shadowColor = [UIColor midnightBlueColor];
    settingButton.shadowHeight = 3.0f;
    settingButton.cornerRadius = 6.0f;
    [settingButton addSubview:[self attachImage:@"setting.png"]];
    [settingButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [settingButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
}

- (UIImageView*)attachImage:(NSString*)filename {
    UIImage *image = [UIImage imageNamed:filename];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.center = CGPointMake(75.0f, 75.0f);
    return imageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
