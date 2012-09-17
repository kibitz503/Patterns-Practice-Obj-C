//
//  RemoteLoader.m
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RemoteLoader.h"
#import "SimpleRemoteControl.h"
#import "Light.h"
#import "LightOffCommand.h"
#import "LightOnCommand.h"
#import "Stereo.h"
#import "StereoOffCommand.h"
#import "StereoOnCommand.h"
#import "StereoVolumeDownCommand.h"
#import "StereoVolumeUpCommand.h"
@implementation RemoteLoader

+(SimpleRemoteControl*)loadRemote
{
    SimpleRemoteControl* tempRemote = [[SimpleRemoteControl alloc]init];
    
    Light* tempLight = [[Light alloc]init];
    Stereo* tempStereo = [[Stereo alloc]init];
    
    //load light on and off
    [tempRemote loadCommandForSlot:0 PositiveObject:[[LightOnCommand alloc]initWithLight:tempLight] NegativeObject:[[LightOffCommand alloc]initWithLight:tempLight]];
     //load stereo on and off
     [tempRemote loadCommandForSlot:1 PositiveObject:[[StereoOnCommand alloc]initWithStereo:tempStereo] NegativeObject:[[StereoOffCommand alloc]initWithStereo:tempStereo]];
     //load stereo volume control
    [tempRemote loadCommandForSlot:2 PositiveObject:[[StereoVolumeUpCommand alloc]initWithStereo:tempStereo] NegativeObject:[[StereoVolumeDownCommand alloc]initWithStereo:tempStereo]];
    
    return tempRemote;
}

@end
