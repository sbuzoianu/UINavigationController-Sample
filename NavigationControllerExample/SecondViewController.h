//
//  SecondViewController.h
//  NavigationControllerExample
//
//  Created by Stefan on 24/11/15.
//  Copyright © 2015 Stefan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) NSString * dataFromTextField;

@end
