//
//  Pizza.h
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Pizza <NSObject>
-(void)prepare;
-(void)bake;
-(void)cut;
-(void)box;
-(NSString*)toppings;
-(float)cost;
@end
