//
//  CookThread.h
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Oven.h"
@interface CookThread : NSObject

@property (nonatomic, strong) Oven *oven;

-(instancetype) initWithOven : (Oven *) o;
-(void) runMethod : (id) param;

@end
