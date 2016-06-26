//
//  AuthenticationViewController.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AuthenticationRequest.h"

@interface AuthenticationViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *logoView;
@property (strong, nonatomic) IBOutlet UILabel *insertInformationDescription;
@property (strong, nonatomic) IBOutlet UILabel *emailLabel;
@property (strong, nonatomic) IBOutlet UILabel *passwordLabel;
@property (strong, nonatomic) IBOutlet UITextField *emailTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextfield;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;
@property (strong, nonatomic) IBOutlet UIButton *signupButton;

- (IBAction)login:(id)sender;
- (IBAction)signup:(id)sender;

@property AuthenticationRequest *request;

@end
