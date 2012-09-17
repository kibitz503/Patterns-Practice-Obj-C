//
//  SimplePizzaFactory.h
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@interface SimplePizzaFactory : NSObject
+(SimplePizzaFactory*)sharedPizzaFactory;
-(id<Pizza>)createPizza:(int)type;
@end
