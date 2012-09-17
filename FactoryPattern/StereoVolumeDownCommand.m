//
//  StereoVolumeDownCommand.m
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StereoVolumeDownCommand.h"
#import "Stereo.h"
@implementation StereoVolumeDownCommand
@synthesize stereo = _stereo;
-(id)initWithStereo:(Stereo*)stereo
{
    self = [self init];
    if (self) {
        [self setStereo:stereo];
    }
    return self;
}
-(void)execute
{
    [self.stereo setVolume:[self.stereo volume] - 1];
}
@end
