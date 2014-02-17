//
//  MapViewController.h
//  HW2
//
//  Created by Оркен on 28.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoutesViewController.h"
#import "Route.h"



@interface MapViewController : UIViewController <RoutesMenuProtocol>

-(void) didSelectRoute:(Route *)route;



@end
