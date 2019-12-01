//
//  CookThread.m
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import "CookThread.h"

@implementation CookThread

-(instancetype) initWithOven:(Oven *)o
{
    self = [super init];
    if (self) {
        _oven = o;
    }
    return self;
}
-(void) runMethod:(id)param {

    NSArray *names = @[@"Хлеб", @"Булка", @"Торт"];
    while (YES) {
        [NSThread sleepForTimeInterval:3.0];
        Dish *D = [[Dish alloc] initWithName:[names objectAtIndex:rand()%names.count] time:rand()%10];
        @synchronized (_oven) {
            NSLog(@"(+)  В печь : %@ (%i)", D.name, D.time);
            [_oven addDish:D];
            [NSThread sleepForTimeInterval:1.0];
            NSLog(@"(-)  В печь : %@ (%i)", D.name, D.time);
        }
    }

}

@end
