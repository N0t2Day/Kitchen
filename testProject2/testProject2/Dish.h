//
//  Dish.h
//  testProject
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dish : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int time;
-(instancetype) initWithName:(NSString *) name time:(int) time;
@end
