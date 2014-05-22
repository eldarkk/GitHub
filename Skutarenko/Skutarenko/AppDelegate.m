//
//  AppDelegate.m
//  Skutarenko
//
//  Created by Eldar on 20.05.14.
//  Copyright (c) 2014 Eldar. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Alien.h"
#import "Animal.h"
#import "Horse.h"
#import "Cow.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    Human *human = [[Human alloc] init];
    Cyclist *cyclist = [[Cyclist alloc] init];
    Runner  *runner = [[Runner alloc] init];
    Swimmer *swimmer = [[Swimmer alloc]init];
    Alien *alien = [[Alien alloc]init];
    
    Animal *animal = [[Animal alloc]init];
    Horse   *horse = [[Horse alloc] init];
    Cow *cow = [[Cow alloc] init];
    
    
    
    human.name = @"Alex";
    human.height = 180;
    human.weight = 80;
    human.gender = @"male";
    
  //  [human run];

    cyclist.name = @"Boris";
    cyclist.height = 170;
    cyclist.weight = 70;
    cyclist.gender = @"male";
    
  //  [cyclist run];
        
    runner.name = @"Kostya";
    runner.height = 170;
    runner.weight = 75;
    runner.gender = @"male";
    
  //  [runner run];
        
    swimmer.name = @"Sergey";
    swimmer.height = 175;
    swimmer.weight = 85;
    swimmer.gender = @"male";

//    [swimmer run];
    
    alien.name = @"Djuvahala";
    alien.height = 320;
    alien.weight = 240;
    alien.gender = @"male";
    alien.type = @"other";
    alien.mutant = @"YES";
    
    animal.nickname = @"Januar";
    animal.age = 13;
    animal.color = @"grey";
    
    horse.nickname = @"Kokki";
    horse.age = 7;
    horse.color = @"brown";
    
    cow.nickname = @"Zorka";
    cow.age = 10;
    cow.color = @"brown";
    
    
    NSArray *array = [[NSArray alloc] initWithObjects: human, cyclist, runner, swimmer, alien, animal, horse, cow, nil];
     
    
    
    
    
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
