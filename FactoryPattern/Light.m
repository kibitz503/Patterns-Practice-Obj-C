//
//  Light.m
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Light.h"

@interface Light (private)
//private functions
@property (assign, nonatomic) bool isLightOn;
//-(bool)isLightOn;
//-(void)setIsLightOn:(bool)isLightOn;
@end

@implementation Light (private)
//@synthesize isLightOn = _isLightOn;
-(bool)isLightOn
{
    return _isLightOn;
}
-(void)setIsLightOn:(bool)isLightOn
{
    _isLightOn = isLightOn;
}
@end

@implementation Light


-(void)on
{
    if (!self.isLightOn) {
        NSLog(@"%@",@"Turn Light On");
        [self setIsLightOn:true];
    }
    else {
         NSLog(@"%@",@"Light Is Already On");
    }
}
-(void)off
{
    if (self.isLightOn) {
        NSLog(@"%@",@"Turn Light Off");
        [self setIsLightOn: false];
    }
    else {
        NSLog(@"%@",@"Light Is Already Off");
    }
}
@end
