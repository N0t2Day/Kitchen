//
//  Dish.m
//  testProject
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import "Dish.h"

@implementation Dish
-(instancetype) initWithName:(NSString *)name time:(int)time
{
    self = [super init];
    if (self) {
        _name = name;
        _time = time;
    }
    return self;
}
@end
