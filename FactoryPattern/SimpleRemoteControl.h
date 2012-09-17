//
//  SimpleRemoteControl.h
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface SimpleRemoteControl : NSObject
{
    @private NSMutableArray* _onSlotArray;
    @private NSMutableArray* _offSlotArray;
}


-(void)onSlotWasPressed:(int)slot;
-(void)offSlotWasPressed:(int)slot;
-(void)loadCommandForSlot:(int)slot PositiveObject:(id<Command>)positiveObject NegativeObject:(id<Command>)negativeObject;

@end
