//
//  Stereo.h
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stereo : NSObject
{
    @private bool _isStereoOn;
    @private int _volume;
}
@property (assign, nonatomic) int volume;
-(void)on;
-(void)off;
@end
