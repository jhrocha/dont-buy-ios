//
//  CausesRequests.h
//  Nao Compra
//
//  Created by Jorge Henrique Rocha on 26/06/16.
//  Copyright © 2016 Jorge Henrique Rocha. All rights reserved.
//

#import "BaseRequest.h"
#import "ListCausesRequestModel.h"
#import "Cause.h"
#import "CauseResponse.h"

typedef void (^blockRequestCreateCause)(BOOL success, CauseResponse *cause, NSError *error);
typedef void (^blockRequestListCauses)(BOOL success, NSArray *causes, NSError *error);

@interface CausesRequests : BaseRequest

-(void) createCause:(Cause *) cause withBlock:(blockRequestCreateCause)block;
-(void) listCauses:(ListCausesRequestModel *) listCausesRequest withBlock:(blockRequestListCauses)block;

@end
