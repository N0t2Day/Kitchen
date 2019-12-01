//
//  DIshTimer.m
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import "DIshTimer.h"

@implementation DIshTimer
-(instancetype) initWithOven:(Oven *)o queue:(id)q {
    self = [super init];
    if (self) {
        _oven = o;
        self->queue = q;
    }
    return self;
}
-(void) runMethod:(id)param {
    while (YES) {
        [NSThread sleepForTimeInterval:1.0];
        @synchronized (_oven) {
            NSLog(@"(+) DishTimer начал работу");
            for (int i = 0; i < [_oven getDishCount]; i++) {
                Dish *D = [_oven getDishAtIndex: i];
                if(--D.time <= 0) [self->queue addDish:D];
                [NSThread sleepForTimeInterval:0.2];
            }
            NSLog(@"(-) DishTimer начал работу");
        }

    }
}
@end
