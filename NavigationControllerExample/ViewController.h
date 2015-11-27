//
//  ViewController.h
//  NavigationControllerExample
//
//  Created by Stefan on 24/11/15.
//  Copyright © 2015 Stefan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (copy, nonatomic) NSArray *litereGrecesti;
@property (weak, nonatomic) IBOutlet UITextField *dataText;

- (IBAction)butonApasat:(id)sender;

@end

