//
//  RouteViewController.h
//  HW2
//
//  Created by Eldar on 30.01.14.
//
//

#import <UIKit/UIKit.h>
#import <JASidePanelController.h>
#import <UIViewController+JASidePanel.h>

@class MapViewController, Route;

@protocol RoutesMenuProtocol <NSObject>
@required
-(void) didSelectRoute:(Route*)route;
@end


@interface RoutesViewController : UITableViewController

@property   (weak, nonatomic) id <RoutesMenuProtocol> delegate;
@property (strong, nonatomic)   NSMutableArray* routes;

@end
