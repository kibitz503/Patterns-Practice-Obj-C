//
//  LightOffCommand.m
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LightOffCommand.h"
#import "Light.h"

@implementation LightOffCommand
@synthesize light = _light;
-(id)initWithLight:(Light*)light
{
    self = [self init];
    if (self) {
        [self setLight:light];
    }
    return self;
}
-(void)execute
{
    [self.light off];
}
//-(Light*)light;
//{
//    return _light;
//}
//-(void)setLight:(Light*)light;
//{
//    _light = light;
//}
@end
