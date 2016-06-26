//
//  CausesRequests.m
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "CausesRequests.h"

@implementation CausesRequests

-(void) createCause:(Cause *) cause withBlock:(blockRequestCreateCause)block{
    NSString *url= [NSString stringWithFormat:@"%@%@", API_INITIAL_PRODUCTION_PATH,CREATE_CAUSE];
    NSError *json_error;
    NSDictionary * params= [MTLJSONAdapter JSONDictionaryFromModel:cause error:&json_error];
    
    if (json_error) {
        if (block) { block(NO,nil,json_error); }
    }else{
        
        [self POSTRequestWithURL:url parameters:params withBlock:^(BOOL success, id result, NSError *req_error) {
            
            if (!req_error) {
                
                NSError *model_error;
                
                CauseResponse *response= [MTLJSONAdapter modelOfClass:CauseResponse.class fromJSONDictionary:result error:&model_error];
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

-(void) listCauses:(ListCausesRequestModel *) listCausesRequest withBlock:(blockRequestListCauses)block{
    NSString *url= [NSString stringWithFormat:@"%@%@", API_INITIAL_PRODUCTION_PATH,LIST_CAUSES_BY_DATE];
    NSError *json_error;
    NSDictionary * params= [MTLJSONAdapter JSONDictionaryFromModel:listCausesRequest error:&json_error];
    
    if (json_error) {
        if (block) { block(NO,nil,json_error); }
    }else{
        
        [self POSTRequestWithURL:url parameters:params withBlock:^(BOOL success, id result, NSError *req_error) {
            
            if (!req_error) {
                
                NSMutableArray *causes= [NSMutableArray new];
                for (NSDictionary *cause in result) {
                    NSError *model_error;
                    CauseResponse *response= [MTLJSONAdapter modelOfClass:CauseResponse.class fromJSONDictionary:cause error:&model_error];
                    if (response) {
                        [causes addObject:response];
                    }
                }
                
                if (block) {
                        block(YES,causes,nil);
                }
    
            }else{
                if (block) {
                    block(NO,nil,req_error);
                }
            }
            
        }];
    }
}


@end
