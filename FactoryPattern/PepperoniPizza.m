//
//  PepperoniPizza.m
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PepperoniPizza.h"

@implementation PepperoniPizza
@synthesize pizza = _pizza;
-(id)initWithPizza:(id<Pizza>)pizza
{
    self = [self init];
    if(self)
    {
        self.pizza = pizza;
    }
    return self; 
}
-(void)prepare
{
    
}
-(void)bake
{
    
}
-(void)cut
{
    
}
-(void)box
{
    
}
-(NSString*)toppings
{
    return [NSString stringWithFormat:@"%@ %@", [self.pizza toppings], @"Pepperoni"];
}
-(float)cost
{
    return 1.99 + [self.pizza cost];
}
@end
