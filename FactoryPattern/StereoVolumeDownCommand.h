//
//  StereoVolumeDownCommand.h
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
@class Stereo;
@interface StereoVolumeDownCommand : NSObject <Command>
{
    @private Stereo* _stereo;
}
@property (strong, nonatomic)Stereo* stereo;
-(id)initWithStereo:(Stereo*)stereo;
-(void)execute;
@end
