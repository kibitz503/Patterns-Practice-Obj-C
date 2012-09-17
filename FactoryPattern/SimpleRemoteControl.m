//
//  SimpleRemoteControl.m
//  PatternWorkshop
//
//  Created by Tom Dolan on 8/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SimpleRemoteControl.h"

@interface SimpleRemoteControl (private)

@property (strong, nonatomic)NSMutableArray* onSlotArray;
@property (strong, nonatomic)NSMutableArray* offSlotArray;
@end

@implementation SimpleRemoteControl (private)


-(NSMutableArray*)onSlotArray{
    if (!_onSlotArray) {
        NSMutableArray* temp = [[NSMutableArray alloc]initWithCapacity:3];
        [self setOnSlotArray:temp];
    }
    return _onSlotArray;
}
-(void)setOnSlotArray:(NSMutableArray *)onSlotArray
{
    _onSlotArray = onSlotArray;
}

-(NSMutableArray*)offSlotArray{
    if (!_offSlotArray) {
        NSMutableArray* temp = [[NSMutableArray alloc]initWithCapacity:3];
        [self setOffSlotArray:temp];
    }
    return _offSlotArray;
}
-(void)setOffSlotArray:(NSMutableArray *)offSlotArray
{
    _offSlotArray = offSlotArray;
}

@end

@implementation SimpleRemoteControl


-(void)onSlotWasPressed:(int)slot
{
    [[self.onSlotArray objectAtIndex:slot] execute];
}
-(void)offSlotWasPressed:(int)slot
{
    [[self.offSlotArray objectAtIndex:slot] execute];
}
-(void)loadCommandForSlot:(int)slot PositiveObject:(id<Command>)positiveObject NegativeObject:(id<Command>)negativeObject;
{
    [self.onSlotArray insertObject:positiveObject atIndex:slot];
    [self.offSlotArray insertObject:negativeObject atIndex:slot];
}

@end
