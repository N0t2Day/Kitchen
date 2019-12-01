//
//  DishOutQueue.h
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dish.h"
#import "Oven.h"
@interface DishOutQueue : NSObject
@property (nonatomic, strong) NSMutableArray<Dish *> *queue;
@property (nonatomic, strong) NSCondition *event;
@property (nonatomic, strong) Oven *oven;

-(instancetype) initWithOven:(Oven *)o;

-(void) addDish :(Dish *)d;
-(void) runMethod : (id)param;
-(Dish *) getDish;
@end
