//
//  ViewController.m
//  Calculator
//
//  Created by Eldar on 02.03.14.
//  Copyright (c) 2014 Eldar. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

@synthesize label, sign, temp;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButton:(id)sender {
   label.text = [sender currentTitle];
    temp = [[sender currentTitle] intValue];
    
}

- (IBAction)operator:(id)sender {
    temp = [label.text intValue];
    
    if ([[sender currentTitle] isEqualToString:@"+"]){
        sign = 0;
    }
   
    
    
}

- (IBAction)result:(id)sender {
   
      
}
@end
