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
    self.litereGrecesti=@[@"Alpha",@"Beta", @"Gamma", @"Delta", @"Epsilon", @"Zeta", @"Eta", @"Theta", @"Iota", @"Kappa", @"Lambda", @"Mu", @"Nu", @"Xi", @"Omicron", @"Pi", @"Rho", @"Sigma", @"Tau", @"Upsilon", @"Phi", @"Chi", @"Psi", @"Omega"];
    

}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.litereGrecesti.count;
}

- (IBAction)butonApasat:(id)sender {
    [self performSegueWithIdentifier:@"Segue1" sender:self];
    NSLog(@"s-a introdus: %@", self.dataText.text);
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleString =@"SimpleString";
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:simpleString];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleString];
    }
    cell.textLabel.text=self.litereGrecesti[indexPath.row];
    return cell;
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
