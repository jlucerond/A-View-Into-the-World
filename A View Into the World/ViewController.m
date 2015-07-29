//
//  ViewController.m
//  A View Into the World
//
//  Created by Joe Lucero on 7/20/15.
//  Copyright (c) 2015 Joe Lucero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

/*- (void)tellUsMoreAboutBoundsAndFrame {
    NSLog(@"button1 bounds size (%f, %f)", self.button1.bounds.size.height, self.button1.bounds.size.width);
    NSLog(@"button1 frame size (%f, %f)", self.button1.frame.size.height, self.button1.frame.size.width);
    
    NSLog(@"button1 bounds origin (%f, %f)", self.button1.bounds.origin.x, self.button1.bounds.origin.y);
    NSLog(@"button1 frame origin (%f, %f)", self.button1.frame.origin.x, self.button1.frame.origin.y);
    
    NSLog(@"button1 center (%f, %f)", self.button1.center.x, self.button1.center.y);
    
    //'
    NSLog(@"");
    
    NSLog(@"view bounds size (%f, %f)", self.viewFrame.bounds.size.height, self.viewFrame.bounds.size.width);
    NSLog(@"view frame size (%f, %f)", self.viewFrame.frame.size.height, self.viewFrame.frame.size.width);
    
    NSLog(@"view bounds origin (%f, %f)", self.viewFrame.bounds.origin.x, self.viewFrame.bounds.origin.y);
    NSLog(@"view frame origin (%f, %f)", self.viewFrame.frame.origin.x, self.viewFrame.frame.origin.y);
    
    NSLog(@"view center (%f, %f)", self.viewFrame.center.x, self.viewFrame.center.y);
    
    //
    NSLog(@"");
    
    NSLog(@"button2 bounds size (%f, %f)", self.button2.bounds.size.height, self.button2.bounds.size.width);
    NSLog(@"button2 frame size (%f, %f)", self.button2.frame.size.height, self.button2.frame.size.width);
    
    NSLog(@"button2 bounds origin (%f, %f)", self.button2.bounds.origin.x, self.button2.bounds.origin.y);
    NSLog(@"button2 frame origin (%f, %f)", self.button2.frame.origin.x, self.button2.frame.origin.y);
    
    NSLog(@"button2 center (%f, %f)", self.button2.center.x, self.button2.center.y);
} */

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self tellUsMoreAboutBoundsAndFrame];
    
    CGRect myViewsFrame = CGRectMake(20, 250, 200, 60);
    UIView *myView = [[UIView alloc] initWithFrame:myViewsFrame];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    
    UIButton *anotherButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    anotherButton.frame = CGRectMake(40, 40, 200, 100);
    anotherButton.backgroundColor = [UIColor greenColor];
    [anotherButton setTitle:@"press me" forState:UIControlStateNormal];
    
    [self.view addSubview:anotherButton];
    
    [anotherButton addTarget:self action:@selector(didPressButton :) forControlEvents:UIControlEventTouchUpInside];
}

- (void) didPressButton : (UIButton *) button {
    NSLog(@"this worked");
    button.backgroundColor = [UIColor orangeColor];
}

@end
