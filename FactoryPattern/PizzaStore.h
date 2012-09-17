//
//  PizzaStore.h
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class SimplePizzaFactory;

@interface PizzaStore : NSObject
{
    SimplePizzaFactory* _factory;
}
@property (strong, nonatomic) SimplePizzaFactory* factory;
-(id)initWithFactory:(SimplePizzaFactory*)factory;
-(id<Pizza>)orderPizza:(int)type;
@end
