//
//  AuthenticationRequest.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseRequest.h"
#import "SignupResponse.h"
#import "Signin.h"
#import "Signup.h"

typedef void (^blockRequestSignup)(BOOL success, SignupResponse *signup, NSError *error);
typedef void (^blockRequestSignin)(BOOL success, NSString *token, NSError *error);

@interface AuthenticationRequest : BaseRequest

- (void)CreateUser:(Signup *)signup withBlock:(blockRequestSignup)block;
- (void)SigninUser:(Signin *)signin withBlock:(blockRequestSignin)block;

@end
