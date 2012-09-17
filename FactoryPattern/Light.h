//
//  Light.h
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Light : NSObject
{
    @private bool _isLightOn;
}
-(void)on;
-(void)off;
@end
