//
//  SignupViewController.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AuthenticationRequest.h"
#import <JTProgressHUD/JTProgressHUD.h>

@interface SignupViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *logoImage;
@property (strong, nonatomic) IBOutlet UILabel *userMessageLabel;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *cpfTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UIButton *signupButton;
@property (strong, nonatomic) IBOutlet UILabel *emailLabel;
@property (strong, nonatomic) IBOutlet UILabel *cpfLabel;
@property (strong, nonatomic) IBOutlet UILabel *passwordLabel;

@property AuthenticationRequest *request;
- (IBAction)signup:(id)sender;

@end
