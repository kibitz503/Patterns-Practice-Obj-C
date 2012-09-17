//
//  Command.h
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef PatternWorkshop_Command_h
#define PatternWorkshop_Command_h

#import <Foundation/Foundation.h>

@protocol Command <NSObject>
-(void)execute;
@end

#endif
