//
//  AuthenticationRequest.m
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "AuthenticationRequest.h"
@implementation AuthenticationRequest

- (void)CreateUser:(Signup *)signup withBlock:(blockRequestSignup)block{

    NSString *url= [NSString stringWithFormat:@"%@%@",API_INITIAL_PRODUCTION_PATH, SIGNUP];
    NSError *json_error;
    NSDictionary * params= [MTLJSONAdapter JSONDictionaryFromModel:signup error:&json_error];
    
    if (json_error) {
        if (block) { block(NO,nil,json_error); }
    }else{

        [self POSTRequestWithURL:url parameters:params withBlock:^(BOOL success, id result, NSError *req_error) {
            
            if (!req_error) {
                
                NSError *model_error;
                SignupResponse *response= [MTLJSONAdapter modelOfClass:SignupResponse.class fromJSONDictionary:result error:&model_error];
                if (response) {
                    if (block) {
                        block(YES,response,nil);
                    }
                    
                }else{
                    if (block) {
                        block(NO,nil,model_error);
                    }
                }
                
            }else{
                if (block) {
                    block(NO,nil,req_error);
                }
            }
            
        }];
    }
    

}
- (void)SigninUser:(Signin *)signin withBlock:(blockRequestSignin)block{
    NSString *url= [NSString stringWithFormat:@"%@%@",API_INITIAL_PRODUCTION_PATH, SIGNIN];
    NSError *json_error;
    NSDictionary * params= [MTLJSONAdapter JSONDictionaryFromModel:signin error:&json_error];
    
    if (json_error) {
        if (block) { block(NO,nil,json_error); }
    }else{
        [self POSTRequestWithURL:url parameters:params withBlock:^(BOOL success, id result, NSError *req_error) {
            if (success) {
                if (block) {
                    if (result) { block(YES,result[@"token"],nil); }
                }
            }else{
                if (block) {
                    block(NO, nil, req_error);
                }
            }
        }];
    }

}

@end
