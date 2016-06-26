//
//  BaseRequest.h
//  unimed api
//
//  Created by Jorginho on 1/19/15.
//  Copyright (c) 2015 JHRocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFHTTPSessionManager.h>
#import "Mantle.h"
#import "Endpoints.h"

typedef void (^requestBlock)(BOOL success, id result, NSError *error);

@interface BaseRequest : NSObject

@property (strong, nonatomic ) AFHTTPSessionManager *manager;

- (void) GETRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters withBlock:(requestBlock)block;
- (void) PUTRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters withBlock:(requestBlock)block;
- (void) POSTRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters withBlock:(requestBlock)block;
- (void) DELETERequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters withBlock:(requestBlock)block;

@end
