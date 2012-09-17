//
//  SimplePizzaFactory.m
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "CheesePizza.h"
#import "PepperoniPizza.h"
//Using a singleton here is purely an academic exercise
static SimplePizzaFactory* sharedPizzaFactory = nil;

@interface SimplePizzaFactory (private)
//private functions
-(id)initSharedInstance;
@end

@implementation SimplePizzaFactory (private)

-(id)initSharedInstance
{
    //That is as close to private constructor as we can do.
    self = [super init];
    if (self) {
        
    }
    return self;
}


@end

@implementation SimplePizzaFactory
+(SimplePizzaFactory*)sharedPizzaFactory
{
    //check to see if we already initilized
    if (!sharedPizzaFactory) {
        //if initializing then lock out other threads
        @synchronized(self)
        {
            if (!sharedPizzaFactory) {
                sharedPizzaFactory = [[SimplePizzaFactory alloc]initSharedInstance];
            }
        }
    }
    return sharedPizzaFactory;
}
-(id)init
{
    //We can't make this method private but we can redo the functionality and throw an exception here
    [NSException raise:@"Invalid Init" format:@"%@ should never be have it's init function called directly", NSStringFromClass([self class])];
    //then doing nothing
    return nil;
}

-(id<Pizza>)createPizza:(int)type
{
    id<Pizza> pizza = nil;
    if (type == 0) {
        pizza = [[CheesePizza alloc]init];
    }
    else if (type == 1)
    {
        pizza = [[PepperoniPizza alloc]initWithPizza:[[CheesePizza alloc]init]];
    }
    return pizza;
}
@end
