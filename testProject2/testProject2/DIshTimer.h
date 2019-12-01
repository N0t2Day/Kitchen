//
//  DIshTimer.h
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CookThread.h"
#import "DishOutQueue.h"
@interface DIshTimer : NSObject {
    DishOutQueue *queue;
}
@property (nonatomic, strong) Oven *oven ;
- (instancetype) initWithOven:(Oven *)o queue:(DishOutQueue *)q;
- (void) runMethod :(id) param;
@end
