//
//  Oven.m
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import "Oven.h"

@implementation Oven
- (instancetype)init
{
    self = [super init];
    if (self) {
        _oven = [NSMutableArray array];
    }
    return self;
}
-(int) getDishCount {
    return (int)_oven.count;
}
-(void) addDish:(Dish *)d {
    [_oven addObject:d];
}
-(Dish *) getDishAtIndex:(int)index {
    
    return [_oven objectAtIndex:index];
}
-(void) removeDish:(Dish *)d {
    [_oven removeObject:d];
}
@end
