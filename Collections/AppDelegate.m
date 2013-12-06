//
//  AppDelegate.m
//  Collections
//
//  Created by Florentino Romero Haro on 06/12/13.
//  Copyright (c) 2013 Florentino Romero Haro. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /* Working with array objects */
    NSString *string1 = @"String 1";
    NSString *string2 = @"String 2";
    NSString *string3 = @"String 3";
    
    NSArray *immutableArray = @[
                              string1,
                              string2,
                              string3
                              ];
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:immutableArray];
    [mutableArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
    [mutableArray removeObjectAtIndex:1];
    [mutableArray setObject:string1 atIndexedSubscript:0];
    
    NSLog(@"Immutable array = %@", immutableArray);
    NSLog(@"Mutable array  = %@", mutableArray);
    
    /* Working with  Immutable Dictionary objects */
    NSDictionary *personInformation = @{
                                        @"firstName" : @"Romina",
                                        @"lastName" : @"Fernandez",
                                        @"age" : @29,
                                        @"sex" : @"Female"
                                        };
    
    NSString *firstName = personInformation[@"firstName"];
    NSString *lastName = personInformation[@"lastName"];
    NSString *age = personInformation[@"age"];
    NSString *sex = personInformation[@"sex"];

    NSLog(@"Full Name = %@ %@",firstName, lastName);
    NSLog(@"Age = %@ , Sex = %@",age, sex);
    
    /* Working with mutable Dictionary objects */
    NSMutableDictionary *mutablePersonInformation = [[NSMutableDictionary alloc] initWithDictionary:personInformation];
    
    mutablePersonInformation[@"age"]=@23;
    
    NSLog(@"New Person Information is %@",mutablePersonInformation);
    
    /* Working with Immutable Set objects */
    
    NSSet *shoppingList = [[NSSet alloc] initWithObjects:
                           @"Milk",
                           @"Bananas",
                           @"Bread",
                           @"Milk",
                           nil];
    
    NSLog(@"Shopping list =  %@",shoppingList);
    
    /* Working with mutable Set Objects */
    
    NSMutableSet *mutableShoppingList = [[NSMutableSet alloc] initWithSet:shoppingList];
    
    [mutableShoppingList addObject:@"Yogurt"];
    [mutableShoppingList removeObject:@"Bread"];
    
    NSLog(@"Original Shopping list =  %@",shoppingList);
    NSLog(@"Mutable Shopping list =  %@",mutableShoppingList);
    
    /* Working with Immutable OrderedSet objects*/
    
    NSOrderedSet *orderedSetOfNumbers = [NSOrderedSet orderedSetWithArray:@[@3,@4,@1,@5,@10]];
    
    NSLog(@"Ordered set of Numbers = %@",orderedSetOfNumbers);
    
    /* Working with mutable OrderedSet objects*/
    
    NSMutableOrderedSet *mutableOrderedSetOfNumbers = [NSMutableOrderedSet orderedSetWithArray:@[@3,@4,@1,@5,@10]];
    
    [mutableOrderedSetOfNumbers removeObject:@5];
    [mutableOrderedSetOfNumbers addObject:@0];
    [mutableOrderedSetOfNumbers exchangeObjectAtIndex:1 withObjectAtIndex:2];
    
    NSLog(@"Mutable Ordered set of Numbers = %@",mutableOrderedSetOfNumbers);
    
    /* Working with CountedSet Object */
    
    NSCountedSet *countedSetOfNumbers = [NSCountedSet setWithObjects:@10,@20,@10,@10,@30,nil];
    
    [countedSetOfNumbers addObject:@20];
    [countedSetOfNumbers removeObject:@10];
    [countedSetOfNumbers addObject:@50];
    
    NSLog(@"Count for object @10 = %lu", (unsigned long)[countedSetOfNumbers countForObject:@10]);
    NSLog(@"Count for object @20 = %lu", (unsigned long)[countedSetOfNumbers countForObject:@20]);
    NSLog(@"Counted Set of Numbers = %@", countedSetOfNumbers);
    
    /* OLD Dictionary Subscripting support */
    
    NSString *const kFirstNameKey = @"firstName";
    NSString *const kLastNameKey = @"lastName";
    
    NSMutableDictionary *subscriptingMutableDictionary = [[NSMutableDictionary alloc] init];
    
    [subscriptingMutableDictionary setValue:@"Toni" forKey:kFirstNameKey];
    [subscriptingMutableDictionary setValue:@"Espinosa" forKey:kLastNameKey];
    
    NSString *subscriptingFirstName = [subscriptingMutableDictionary valueForKey:kFirstNameKey];
    NSString *subscriptingLastName = [subscriptingMutableDictionary valueForKey:kLastNameKey];
    
    NSLog(@"Subscripting OLD Full Name = %@ %@", subscriptingFirstName, subscriptingLastName);
    
    /* NEW Dictionary Subscripting support */
    
    NSDictionary *subscriptingDictionary = @{
                                             kFirstNameKey : @"Ramón",
                                             kLastNameKey : @"Haro",
                                             };
    
    subscriptingFirstName = [subscriptingDictionary valueForKey:kFirstNameKey];
    subscriptingLastName = [subscriptingDictionary valueForKey:kLastNameKey];
    
    NSLog(@"Subscripting NEW Full Name = %@ %@", subscriptingFirstName, subscriptingLastName);
    
    /* OLD Array Subcripting support */
    
    NSArray *oldSubscriptingArray = [[NSArray alloc] initWithObjects:@"Margarita", @"Haro", nil];
    
    NSString *firstItem = oldSubscriptingArray[0];
    NSString *secondItem = oldSubscriptingArray[1];
    
    NSLog(@"Full content array = %@ %@", firstItem, secondItem);
    
    /* NEW Array Subcripting support */

    NSArray *subscriptingArray = @[@"Florentino", @"Romero"];
    
    firstItem = subscriptingArray[0];
    secondItem = subscriptingArray[1];
    
    NSLog(@"Full content array = %@ %@", firstItem, secondItem);
    
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
