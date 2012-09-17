//
//  ViewController.h
//  FactoryPattern
//
//  Created by Tom Dolan on 8/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PizzaStore;
@class SimpleRemoteControl;

@interface ViewController : UIViewController
{
    PizzaStore* _pizzaStore;
    SimpleRemoteControl* _simpleRemote;
}
@property (weak, nonatomic) IBOutlet UILabel *toppingsLabel;
@property (weak, nonatomic) IBOutlet UILabel *costLabel;
@property (strong, nonatomic) PizzaStore* pizzaStore;
@property (strong, nonatomic) SimpleRemoteControl* simpleRemote;
- (IBAction)pizzaButtonPressed:(id)sender;
- (IBAction)commandOnButtonPressed:(id)sender;
- (IBAction)commandOffButtonPressed:(id)sender;

@end
