//
//  User.m
//  HW2
//
//  Created by Оркен on 18.01.14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize username, password;

+(User *) userWithname:(NSString *)name andPassword:(NSString *)password
{
    User *user= [[User  alloc]  init];
    
    user.username =  name;
    user.password = password;
    
    return user;
}

-(void) login {
    
    if (([self.username length] > 0) & ([self.password length] > 0 )) {
       
        NSLog(@"Login user %@, password %@", self.username, self.password); 
        
    } else
    
        NSLog(@"Please enter youre login and password!");

}


@end
