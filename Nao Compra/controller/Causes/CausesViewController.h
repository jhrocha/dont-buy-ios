//
//  CausesTableViewController.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CausesRequests.h"

@interface CausesViewController : UITableViewController

@property Cause *cause;
@property CausesRequests *request;

- (IBAction)chooseGender:(id)sender;
- (IBAction)chooseAgegroup:(id)sender;
- (IBAction)chooseQuestion:(id)sender;
- (IBAction)chooseAnswer:(id)sender;
- (IBAction)sendData:(id)sender;

@end
