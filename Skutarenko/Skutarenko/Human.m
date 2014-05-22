//
//  Human.m
//  Skutarenko
//
//  Created by Eldar on 20.05.14.
//  Copyright (c) 2014 Eldar. All rights reserved.
//

#import "Human.h"

@implementation Human


- (void) run{
    NSLog(@"%@ is running", [self class]);
    }

-(void) superRun{
    
    NSLog(@"Super running");
}

@end
