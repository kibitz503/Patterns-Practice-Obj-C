//
//  Stereo.m
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Stereo.h"
@interface Stereo (private)
//private functions
-(bool)isStereoOn;
-(void)setIsStereoOn:(bool)isStereoOn;
@end

@implementation Stereo (private)
-(bool)isStereoOn
{
    return _isStereoOn;
}
-(void)setIsStereoOn:(bool)isStereoOn
{
    _isStereoOn = isStereoOn;
}
@end


@implementation Stereo
@synthesize volume = _volume;
-(void)on
{
    if (!self.isStereoOn) {
        NSLog(@"%@",@"Turn Stereo On");
        [self setIsStereoOn:true];
    }
    else {
        NSLog(@"%@",@"Stereo Is Already On");
    }
}
-(void)off
{
    if (self.isStereoOn) {
        NSLog(@"%@",@"Turn Stereo Off");
        [self setIsStereoOn: false];
    }
    else {
        NSLog(@"%@",@"Stereo Is Already Off");
    }
}
-(int)volume
{
    return _volume;
}
-(void)setVolume:(int)volume
{
    if (self.isStereoOn) {
        if (volume >= 0) {
            _volume = volume;
            NSLog(@"Stereo Volume Set %d",_volume);
        }
        else {
            NSLog(@"%@",@"Volume Can't Be Negative");
        }
    }
    else
    {
        NSLog(@"%@",@"Volume Can't Be Adjusted While Stereo Is Off");
    }
}
@end
