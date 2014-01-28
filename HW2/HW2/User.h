//
//  User.h
//  HW2
//
//  Created by Оркен on 18.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject


@property   (strong, nonatomic)   NSString    *username;
@property   (strong, nonatomic)   NSString    *password;

+(User*) userWithname:(NSString*) username andPassword:(NSString*) password;

-(void) login;


@end
