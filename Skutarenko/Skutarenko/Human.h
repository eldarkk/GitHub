//
//  Human.h
//  Skutarenko
//
//  Created by Eldar on 20.05.14.
//  Copyright (c) 2014 Eldar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) NSInteger height;
@property (nonatomic) NSInteger weight;
@property (strong, nonatomic) NSString *gender;

- (void) run;
- (void) superRun;

@end
