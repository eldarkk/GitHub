//
//  MapViewController.h
//  HW2
//
//  Created by Оркен on 28.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *labelOfRoute;

- (IBAction)longTap:(id)sender;

@end
