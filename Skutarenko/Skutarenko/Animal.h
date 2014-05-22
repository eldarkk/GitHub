//
//  Animal.h
//  Skutarenko
//
//  Created by Eldar on 22.05.14.
//  Copyright (c) 2014 Eldar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (strong, nonatomic) NSString *nickname;
@property (nonatomic) NSInteger age;
@property (strong, nonatomic) NSString *color;

-(void) run;

@end
