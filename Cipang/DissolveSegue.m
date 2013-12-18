//
//  DissolveSegue.m
//  Cipang
//
//  Created by Sasaki Kai on 12/18/13.
//  Copyright (c) 2013 Sasaki Kai. All rights reserved.
//

#import "DissolveSegue.h"

@implementation DissolveSegue

- (void)perform {
    UIViewController *sourceController = (UIViewController*)self.sourceViewController;
    UIViewController *destinationController = (UIViewController*)self.destinationViewController;
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.4;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    // 例えば
    transition.type = kCATransitionFade;
    // 例えば
    transition.subtype = kCATransitionFromTop;
    
    // NavigationController のアニメーションを変更する
    [sourceController.navigationController.view.layer addAnimation:transition forKey:@"dissolve_transition"];
    
    // NavigationController を使って画面遷移する
    [sourceController.navigationController pushViewController:destinationController animated:NO];
}

@end
