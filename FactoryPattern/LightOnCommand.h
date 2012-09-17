//
//  LightOnCommand.h
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
@class Light;

@interface LightOnCommand : NSObject <Command>
{
    @private Light *_light;
}
@property (strong, nonatomic)Light* light;
-(id)initWithLight:(Light*)light;
-(void)execute;
@end
