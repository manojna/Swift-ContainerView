//
//  FirstChildViewController.m
//  ContainerView
//
//  Created by Paradigm on 10/31/14.
//  Copyright (c) 2014 paradigmcreatives. All rights reserved.
//

#import "FirstChildViewController.h"

@interface FirstChildViewController ()

@end

@implementation FirstChildViewController

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
    NSLog(@"FirstViewController moving to or from parent view controller");
    self.view.backgroundColor=[UIColor blueColor];
}

-(void)didMoveToParentViewController:(UIViewController *)parent
{
    NSLog(@"FirstViewController did move to parent view controller");
    self.view.frame = CGRectMake(0,0,768, 1024);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
