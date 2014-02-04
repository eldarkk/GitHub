//
//  Route.h
//  HW2
//
//  Created by Оркен on 18.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Route : NSObject


@property (nonatomic, strong) NSString *title;

+(Route*) initRouteWithDictionary:(NSDictionary*) attributes;

@end
