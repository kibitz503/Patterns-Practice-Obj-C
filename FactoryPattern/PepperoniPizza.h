//
//  PepperoniPizza.h
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CheesePizza.h"
#import "Pizza.h"

@interface PepperoniPizza : CheesePizza <Pizza>
{
    id<Pizza> _pizza;
}
@property (nonatomic, retain) id<Pizza> pizza;
-(id)initWithPizza:(id<Pizza>)pizza;
@end
