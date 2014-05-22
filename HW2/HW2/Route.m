//
//  Route.m
//  HW2
//
//  Created by Оркен on 18.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "Route.h"

@implementation Route

@synthesize title, price, isFav;


+(Route*) initRouteWithDictionary:(NSDictionary*) attributes
{
    Route *route = [[Route alloc]  init];
    
    route.title = attributes[@"route_title"];
    route.price = attributes[@"route_price"];
    
    return route;
}

@end
