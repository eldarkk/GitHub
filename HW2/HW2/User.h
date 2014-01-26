//
//  User.h
//  HW2
//
//  Created by Оркен on 18.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject


@property   (weak, nonatomic)   NSString    *username;
@property   (weak, nonatomic)   NSString    *password;

+(User*) userWithname:(NSString*) username andPassword:(NSString*) password;

-(void) login;


@end
