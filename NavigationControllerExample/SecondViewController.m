//
//  SecondViewController.m
//  NavigationControllerExample
//
//  Created by Stefan on 24/11/15.
//  Copyright © 2015 Stefan. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize dataFromTextField=_dataFromTextField;
@synthesize dataLabel=_dataLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"Al Doilea Cadru";
    self.dataLabel.text=self.dataFromTextField;
    NSLog(@"data din View 1=%@", self.dataFromTextField);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
 
 }
*/

@end
