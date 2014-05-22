//
//  ViewController.h
//  Calculator
//
//  Created by Eldar on 02.03.14.
//  Copyright (c) 2014 Eldar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (nonatomic) NSInteger temp;
@property (nonatomic) NSInteger sign;



- (IBAction)pushButton:(id)sender;
- (IBAction)operator:(id)sender;

- (IBAction)result:(id)sender;

@end
