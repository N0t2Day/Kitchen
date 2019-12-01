//
//  Oven.h
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dish.h"
@interface Oven : NSObject
@property (nonatomic, strong)NSMutableArray *oven;
-(int) getDishCount;
-(void) addDish :(Dish *) d;
-(Dish *) getDishAtIndex:(int)index;
-(void) removeDish :(Dish *) d;

@end
