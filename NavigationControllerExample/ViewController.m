//
//  ViewController.m
//  NavigationControllerExample
//
//  Created by Stefan on 24/11/15.
//  Copyright © 2015 Stefan. All rights reserved.
//

#import "ViewController.h"
#include "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize dataText=_dataText;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"Primul cadru";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)butonApasat:(id)sender {
    [self performSegueWithIdentifier:@"Segue1" sender:self];
    NSLog(@"s-a introdus: %@", self.dataText.text);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Segue1"])
    {
        SecondViewController* secondVC=(SecondViewController *) segue.destinationViewController;
        secondVC.dataFromTextField=self.dataText.text;
    }

}
@end
