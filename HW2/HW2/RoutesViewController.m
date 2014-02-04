//
//  RouteViewController.m
//  HW2
//
//  Created by Eldar on 30.01.14.
//
//

#import "RoutesViewController.h"
#import <AFNetworking.h>
#import "Route.h"
#import "MapViewController.h"
#import <HTProgressHUD.h>

@interface RoutesViewController ()

@end

@implementation RoutesViewController

@synthesize routes;

- (void)viewDidLoad
{
    [super viewDidLoad];
          
    NSURL *url = [NSURL URLWithString:@"http://marshrutki.com.ua/mu/routes.php"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    HTProgressHUD *HUD = [[HTProgressHUD alloc] init];
    [HUD showInView:self.view];
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
       NSLog(@"App.net Global Stream: %@", JSON);

           
        self.routes =   [[NSMutableArray alloc] init];
        
        for (NSDictionary* attributes in JSON)    {
            
            [self.routes addObject:[Route initRouteWithDictionary:attributes]];
        }
        [HUD hide];
        [self.tableView reloadData];
        
        
    
    } failure:nil];
    [operation start];
    [HUD hideAfterDelay:3];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    
    return self.routes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    Route* route = (Route*) self.routes[indexPath.row];
    cell.textLabel.text = route.title;
    
    return cell;
}
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{ 
    MapViewController *detailMapViewController = [[MapViewController alloc] init];
    detailMapViewController.labelOfRoute.text = self.routes[indexPath.row];
    [self.navigationController pushViewController:detailMapViewController animated:YES];
    }

@end
