//
//  ViewController.m
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "PizzaStore.h"
#import "Pizza.h"
#import "SimplePizzaFactory.h"
#import "SimpleRemoteControl.h"
#import "RemoteLoader.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize toppingsLabel;
@synthesize costLabel;
@synthesize pizzaStore = _pizzaStore;
@synthesize simpleRemote = _simpleRemote;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidUnload
{
    [self setPizzaStore:nil];
    [self setSimpleRemote:nil];
    [self setToppingsLabel:nil];
    [self setCostLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pizzaButtonPressed:(id)sender {
    UIButton* button = sender;
    id<Pizza> tempPizza = [self.pizzaStore orderPizza:button.tag];
    toppingsLabel.text = [tempPizza toppings];
    costLabel.text = [NSString stringWithFormat:@"%.2f",[tempPizza cost]];
}


-(PizzaStore*)pizzaStore
{
    if (!_pizzaStore) {
        PizzaStore *tempStore = [[PizzaStore alloc]initWithFactory:[SimplePizzaFactory sharedPizzaFactory]];
        [self setPizzaStore:tempStore];
    }
    return _pizzaStore;
}

-(void)setPizzaStore:(PizzaStore *)pizzaStore
{
    _pizzaStore = pizzaStore;
}
-(SimpleRemoteControl*)simpleRemote
{
    if (!_simpleRemote) {
        [self setSimpleRemote:[RemoteLoader loadRemote]];
    }
    return _simpleRemote;
}

-(void)setSimpleRemote:(SimpleRemoteControl *)simpleRemote
{
    _simpleRemote = simpleRemote;
}
- (IBAction)commandOnButtonPressed:(id)sender
{
    UIButton* button = sender;
    [self.simpleRemote onSlotWasPressed:button.tag];
}
- (IBAction)commandOffButtonPressed:(id)sender
{
    UIButton* button = sender;
    [self.simpleRemote offSlotWasPressed:button.tag];
}


@end
