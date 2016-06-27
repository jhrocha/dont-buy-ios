//
//  CausesTableViewController.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CausesRequests.h"
#import <JTProgressHUD/JTProgressHUD.h>

@interface CausesViewController : UITableViewController

@property Cause *cause;
@property Customer *customer;
@property CausesRequests *request;
@property (strong, nonatomic) IBOutlet UIButton *genderButton;
@property (strong, nonatomic) IBOutlet UIButton *ageGroupButton;
@property (strong, nonatomic) IBOutlet UIButton *questionButton;
@property (strong, nonatomic) IBOutlet UIButton *answerButton;

- (IBAction)chooseGender:(id)sender;
- (IBAction)chooseAgegroup:(id)sender;
- (IBAction)chooseQuestion:(id)sender;
- (IBAction)chooseAnswer:(id)sender;
- (IBAction)sendData:(id)sender;

@end
