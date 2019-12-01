//
//  DishOutQueue.m
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import "DishOutQueue.h"

@implementation DishOutQueue
-(instancetype) initWithOven:(Oven *)o {
    self = [super init];
    if (self) {
        _queue = [NSMutableArray array];
        _event = [[NSCondition alloc] init];
        _oven = o;
    }
    return self;
}
-(void)addDish:(Dish *)d {
    
    @synchronized (_queue) {
        [_queue addObject:d];
    }
    [_event lock];
    [_event signal];
    [_event unlock];
}
-(void) runMethod:(id)param {
    while (YES) {
        Dish *D = [self getDish];
        @synchronized (_oven) {
            NSLog(@"(+) начало извлекания");
            [_oven removeDish:D];
            [NSThread sleepForTimeInterval:0.5];
            @synchronized (_queue) {
                for (Dish *obj in _queue) {
                    NSLog(@"Извлечение %@", obj.name);
                    [_oven removeDish:obj];
                    [NSThread sleepForTimeInterval:0.5];
                }
                [_queue removeAllObjects];
            }
            NSLog(@"(-) конец извлекания");
        }
    }
}
-(Dish *) getDish {
    while (_queue.count == 0) {
        [_event lock];
        [_event wait];
        [_event unlock];
    }
    Dish *D;
    @synchronized (_queue) {
        D = [_queue objectAtIndex:0];
        [_queue removeObject:D];
    }
    return D;
}
@end
