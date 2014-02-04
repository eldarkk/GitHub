//
//  MapViewController.m
//  HW2
//
//  Created by Оркен on 28.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"
#import "LoginViewController.h"

@implementation MapViewController

@synthesize labelOfRoute;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void)viewDidLoad
{
    [super   viewDidLoad];
    
    UIViewController *loginController = [self.storyboard instantiateViewControllerWithIdentifier:@"AuthNavigationController"];
    [self.navigationController presentViewController:loginController animated:YES completion:nil];
    
}

- (void)viewDidUnload
{
    [self setLabelOfRoute:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)longTap:(id)sender {
    
    NSLog(@"Long tap!");
}


@end
