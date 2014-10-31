//
//  ViewController.m
//  ContainerView
//
//  Created by Paradigm on 10/31/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "ViewController.h"
#import "FirstChildViewController.h"
#import "SecondChildViewController.h"
@interface ViewController ()

@end

@implementation ViewController
FirstChildViewController *firstChild;
SecondChildViewController *secondChild;

- (void)viewDidLoad {
    [super viewDidLoad];
    firstChild = [[FirstChildViewController alloc] init];
    [self addChildViewController:firstChild];
    [firstChild didMoveToParentViewController:self];
    
    [self.view addSubview:firstChild.view];
    
    secondChild = [[SecondChildViewController alloc] init];
    
    [self addChildViewController:secondChild];
    [secondChild didMoveToParentViewController:self];
    //[self.view addSubview:secondChild.view];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    if(UIInterfaceOrientationIsPortrait(fromInterfaceOrientation)) {
        [self transitionFromViewController:firstChild toViewController:secondChild duration:1 options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:nil];
        [firstChild didMoveToParentViewController:self];}
    
    if(UIInterfaceOrientationIsLandscape(fromInterfaceOrientation)) {
        [self transitionFromViewController:secondChild toViewController:firstChild duration:1 options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:nil];
        [secondChild didMoveToParentViewController:self];}
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
