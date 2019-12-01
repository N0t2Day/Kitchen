//
//  main.m
//  testProject2
//
//  Created by master on 21.10.17.
//  Copyright © 2017 l. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dish.h"
#import "Oven.h"
#import "CookThread.h"
#import "DIshTimer.h"
#import "DishOutQueue.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        srand((unsigned int)time(NULL));
        Oven *oven = [[Oven alloc] init];
        for (int i = 0; i < 4; i++) {
            CookThread *CT = [[CookThread alloc] initWithOven:oven];
            NSThread *T = [[NSThread alloc] initWithTarget:CT selector:@selector(runMethod:) object:nil];
            [T start];
        }
        DishOutQueue *DOQ = [[DishOutQueue alloc] initWithOven:oven];
        NSThread *T1 = [[NSThread alloc] initWithTarget:DOQ selector:@selector(runMethod:) object:nil];
        DIshTimer *DT = [[DIshTimer alloc] initWithOven:oven queue:DOQ];
        NSThread *T2 = [[NSThread alloc] initWithTarget:DT selector:@selector(runMethod:) object:nil];
        
        [T1 start];
        [T2 start];
        int a;
        scanf("%i", &a);
        
    }
    return 0;
}
