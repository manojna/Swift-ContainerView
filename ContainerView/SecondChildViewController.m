//
//  SecondChildViewController.m
//  ContainerView
//
//  Created by Paradigm on 10/31/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "SecondChildViewController.h"

@interface SecondChildViewController ()

@end

@implementation SecondChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)willMoveToParentViewController:(UIViewController *)parent

{
    NSLog(@"SecondViewController moving to or from parent view controller");
    self.view.backgroundColor=[UIColor yellowColor];
    
}

-(void)didMoveToParentViewController:(UIViewController *)parent
{
    NSLog(@"SecondViewController did move to parent view controller");
    self.view.frame = CGRectMake(0,0, 1024,768);
}/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
