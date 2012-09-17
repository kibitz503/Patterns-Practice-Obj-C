//
//  PizzaStore.m
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PizzaStore.h"
#import "SimplePizzaFactory.h"
#import "Pizza.h"

@implementation PizzaStore
@synthesize factory = _factory;
-(id)initWithFactory:(SimplePizzaFactory*)factory
{
    self = [self init];
    if (self) {
        self.factory = factory;
    }
    return self;
}
-(SimplePizzaFactory*)factory
{
    return _factory;
}
-(void)setFactory:(SimplePizzaFactory*)factory
{
    _factory = factory;
}
-(id<Pizza>)orderPizza:(int)type
{
    id<Pizza> pizza = [self.factory createPizza:type];
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    return pizza;
}
@end
