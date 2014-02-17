//
//  MySidePanelController.m
//  HW2
//
//  Created by Eldar on 30.01.14.
//
//

#import "MySidePanelController.h"
#import "MapViewController.h"
#import "RoutesViewController.h"


@interface MySidePanelController ()

@end

@implementation MySidePanelController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) awakeFromNib
{
    UINavigationController* navigationController = [self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"];
    
    MapViewController* mapViewController = (MapViewController*)[navigationController topViewController];
    
    RoutesViewController* routesViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"];

    routesViewController.delegate = mapViewController;
    [self setLeftPanel:routesViewController];
    [self setCenterPanel:navigationController];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
